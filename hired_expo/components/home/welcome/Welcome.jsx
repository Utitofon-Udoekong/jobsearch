import React, { useState } from 'react'
import { View, Text, TextInput, TouchableOpacity, Image, FlatList } from 'react-native'
import { useRouter } from 'expo-router'
import { icons, SIZES } from '../../../constants'

import styles from './welcome.style'

const Welcome = ({searchTerm, setSearchTerm, handleClick}) => {
  return (
    <View>
      <View style={styles.container}>
        <Text style={styles.userName}>Welcome</Text>
        <Text style={styles.welcomeMessage}>Find your perfect job</Text>
      </View>

      <View style={styles.searchContainer}>
        <View style={styles.searchWrapper}>
          <TextInput style={styles.searchInput} value={searchTerm} placeholder="What are you looking for?"
            onChangeText={(text) => setSearchTerm(text)} />
        </View>

        <TouchableOpacity style={styles.searchBtn} onPress={handleClick}>
          <Image source={icons.search} style={styles.searchBtnImage} resizeMode="contain" />
        </TouchableOpacity>
      </View>

      
    </View>
  )
}

export default Welcome