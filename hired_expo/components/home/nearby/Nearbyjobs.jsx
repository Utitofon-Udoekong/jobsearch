import React from 'react'
import { View, Text, TouchableOpacity, ActivityIndicator } from 'react-native'

import styles from './nearbyjobs.style'
import { useRouter } from 'expo-router'
import { COLORS, SIZES } from '../../../constants'
import NearbyJobCard from '../../common/cards/nearby/NearbyJobCard'
import useFetch from '../../../hook/useFetch'

const NearbyJobs = () => {
  const router = useRouter()
  const {isLoading, error, data} = useFetch(
    'search',
    {
      query: 'vuejs',
      num_pages: '1'
    }
  )
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Popular jobs</Text>
        <TouchableOpacity onPress={() => {
          router.push("/search/vuejs")
        }}>
        <Text style={styles.headerBtn}>Show all</Text>
        </TouchableOpacity>
      </View>

      <View style={styles.cardsContainer}>
      {isLoading ? (<ActivityIndicator size="large" color={COLORS.primary} />) :
        error ? (<Text>Something went wrong</Text>) : (
          data?.map((job) => (
            <NearbyJobCard 
            job={job}
            handleNavigate={() => router.push(`/job-details/${job.job_id}`)}
            key={`nearby-job-${job.job_id}`}
             />
          ))
        ) }
      </View>
    </View>
  )
}

export default NearbyJobs