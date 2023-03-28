import React, { useState, useEffect, } from 'react'
import { View, Text, TouchableOpacity, SafeAreaView, FlatList, Image, ActivityIndicator, Switch, TextInput } from 'react-native'
import Modal from "react-native-modal";
import { COLORS, icons, SIZES, FONT } from "../../constants"
import { useSearchParams, Stack, useRouter } from 'expo-router';
import { ScreenHeaderBtn, NearbyJobCard } from '../../components';
import styles from './search.style';
import AntDesign from '@expo/vector-icons/AntDesign';
import axios from 'axios'
import SearchDropdown from '../../components/common/dropdowns/dropdown';
// import MultiSelectComponent from '../../components/common/dropdowns/multiselect';

const datesPosted = ["all", "today", "3days", "week", "month"]
import searchStyle from '../../styles/search';


const JobSearch = () => {
    const params = useSearchParams()
    const router = useRouter()
    const [isModalVisible, setModalVisible] = useState(false);
    const [searchResult, setSearchResult] = useState([]);
    const [searchLoader, setSearchLoader] = useState(false);
    const [searchError, setSearchError] = useState(null);
    const [page, setPage] = useState(1);
    const [datePosted, setDatePosted] = useState("all")
    const [searchRemote, setSearchRemote] = useState(false)
    const [searchQuery, setSearchQuery] = useState("")

    const toggleModal = () => {
        setModalVisible(!isModalVisible);
    };
    const handlePagination = (direction) => {
        if (direction === 'left' && page > 1) {
            setPage(page - 1)
            handleSearch()
        } else if (direction === 'right') {
            setPage(page + 1)
            handleSearch()
        }
    }

    const handleSearch = async () => {
        setSearchLoader(true);
        setSearchResult([]);

        try {
            const options = {
                method: "GET",
                url: `https://jsearch.p.rapidapi.com/search`,
                headers: {
                    "X-RapidAPI-Key": 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
                    "X-RapidAPI-Host": "jsearch.p.rapidapi.com",
                },
                params: {
                    query: params.id,
                    page: page.toString(),
                    location: location,
                    radius: 100,
                    remote_jobs_only: (params.remote || params.id.includes("remote")) ?? searchRemote,
                    date_posted: datePosted 
                }
            };

            if(params.remote) setSearchRemote(true)
            const response = await axios.request(options);
            console.log(response)
            setSearchResult(response.data.data);
        } catch (error) {
            setSearchError(error);
            console.log(error);
        } finally {
            setSearchLoader(false);
        }
    }

    useEffect(() => {
        handleSearch()
    }, [])

    return (
        <SafeAreaView style={{ flex: 1, backgroundColor: COLORS.lightWhite }}>
            <Stack.Screen
                options={{
                    headerStyle: { backgroundColor: COLORS.lightWhite },
                    headerShadowVisible: false,
                    headerLeft: () => (
                        <ScreenHeaderBtn
                            iconUrl={icons.left}
                            dimension='60%'
                            handlePress={() => router.back()}
                        />
                    ),
                    headerRight: () => (
                        <ScreenHeaderBtn
                            iconUrl={icons.filter}
                            dimension='60%'
                            handlePress={toggleModal}
                        />
                    ),
                    headerTitle: "",
                }}
            />
            <View style={{
                flex: 1,
                padding: SIZES.large
            }}>
                <View >
                    <Modal style={{
                        justifyContent: 'flex-end',
                        margin: 0,
                    }} isVisible={isModalVisible} swipeDirection={['down']}>
                        <View style={styles.ModalContent}>
                            <TouchableOpacity onPress={() => {
                                toggleModal();
                                handleSearch();
                                if(searchQuery.length > 0) router.setParams({id: searchQuery})
                            }} style={styles.closeModalBtn}>
                                <View>
                                    <AntDesign
                                        color="black"
                                        name="close"
                                        size={30}
                                    ></AntDesign>
                                </View>
                            </TouchableOpacity>
                            <Text style={{
                                marginBottom: 5,
                                fontSize: SIZES.medium,
                                fontFamily: FONT.medium,
                                color: COLORS.primary,
                            }}>Query</Text>
                            <View style={styles.searchContainer}>
                                <View style={styles.searchWrapper}>
                                    <TextInput style={styles.searchInput} value={searchQuery} placeholder="Set Query"
                                    onChangeText={(text) => setSearchQuery(text)} />
                                </View>
                            </View>
                            <SearchDropdown
                                label="Date posted"
                                items={datesPosted}
                                selectedItem={datePosted}
                                handlePress={(item) => {
                                    setDatePosted(item)
                                }} />
                            
                            
                            <View style={{
                                display: "flex",
                                flexDirection: "row",
                                marginTop: SIZES.medium
                            }}>
                                <Text style={{
                                    marginRight: 20,
                                    fontSize: SIZES.medium,
                                    fontFamily: FONT.medium,
                                    color: COLORS.primary,
                                }}>Remote jobs only</Text>
                                <Switch
                                trackColor={{false: COLORS.gray2, true: COLORS.gray2}}
                                thumbColor={searchRemote ? COLORS.success : COLORS.gray}
                                ios_backgroundColor="#3e3e3e"
                                onValueChange={value => setSearchRemote(value)}
                                value={searchRemote}
                              />
                            </View>
                        </View>
                    </Modal>
                </View>
                <FlatList data={searchResult}
                    renderItem={({ item }) => (
                        <NearbyJobCard
                            job={item}
                            handleNavigate={() => router.push(`/job-details/${item.job_id}`)}
                        />
                    )}
                    keyExtractor={(item) => item.job_id}
                    contentContainerStyle={{ padding: SIZES.medium, rowGap: SIZES.medium }}
                    ListHeaderComponent={() => (
                        <View>
                            <View style={searchStyle.container}>
                                <Text style={searchStyle.searchTitle}>{params.id}</Text>
                                <Text style={searchStyle.noOfSearchedJobs}>Job Opportunities</Text>
                            </View>
                            <View style={searchStyle.loaderContainer}>
                                {searchLoader ? (
                                    <ActivityIndicator size='large' color={COLORS.primary} />
                                ) : searchError && (
                                    <Text>Oops something went wrong</Text>
                                )}
                            </View>
                        </View>
                    )}
                    ListFooterComponent={() => (
                        <View style={searchStyle.footerContainer}>
                            <TouchableOpacity
                                style={searchStyle.paginationButton}
                                onPress={() => handlePagination('left')}
                            >
                                <Image
                                    source={icons.chevronLeft}
                                    style={searchStyle.paginationImage}
                                    resizeMode="contain"
                                />
                            </TouchableOpacity>
                            <View style={searchStyle.paginationTextBox}>
                                <Text style={searchStyle.paginationText}>{page}</Text>
                            </View>
                            <TouchableOpacity
                                style={searchStyle.paginationButton}
                                onPress={() => handlePagination('right')}
                            >
                                <Image
                                    source={icons.chevronRight}
                                    style={searchStyle.paginationImage}
                                    resizeMode="contain"
                                />
                            </TouchableOpacity>
                        </View>
                    )}
                />
            </View>
        </SafeAreaView>
    )
}

export default JobSearch