import { View, Text, StyleSheet } from 'react-native'
import { SelectList } from 'react-native-dropdown-select-list'
import { COLORS, SIZES, FONT } from '../../../constants'
const styles = StyleSheet.create({
    filterContainer: {
        marginBottom: 10,
    },
    label: {
        marginBottom: 5,
        fontSize: SIZES.medium,
        fontFamily: FONT.medium,
        color: COLORS.primary,
    },
})

const SearchDropdown = ({ label, items, handlePress }) => (
    <View style={styles.filterContainer}>
        <Text style={styles.label}>{label}</Text>
        <SelectList 
            setSelected={handlePress} 
            data={items} 
            search={false}
        />
    </View>
)

export default SearchDropdown