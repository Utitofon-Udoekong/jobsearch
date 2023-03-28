import { View, Text, TouchableOpacity } from 'react-native'

import styles from './popularjobs.style'
import { useRouter } from 'expo-router'
import { COLORS, SIZES } from '../../../constants'


const Popularjobs = () => {
  const router = useRouter()

  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.headerTitle}>Find your job type</Text>
      </View>
      <View style={styles.cardsContainer}>
        <TouchableOpacity onPress={() => {
          router.push('/search/full-time')
        }} style={styles.cards(COLORS.primary)}>
          <Text style={styles.cardsText}>Full time</Text>
        </TouchableOpacity>
        <TouchableOpacity onPress={() => {
          router.push(`/search/part-time`)
        }} style={styles.cards(COLORS.secondary)}>
          <Text style={styles.cardsText}>Part time</Text>
        </TouchableOpacity>

        <TouchableOpacity onPress={() => {
          router.push(`/search/remote?remote=true`)
        }} style={styles.cards(COLORS.tertiary)}><Text style={styles.cardsText}>Remote</Text></TouchableOpacity>

        <TouchableOpacity onPress={() => {
          router.push(`/search/contractor`)
        }} style={styles.cards(COLORS.gray)}><Text style={styles.cardsText}>Intern</Text></TouchableOpacity>
      </View>
    </View>
  )
}

export default Popularjobs