import React from 'react';
  import { StyleSheet, View, Text } from 'react-native';
  import { MultipleSelectList } from 'react-native-dropdown-select-list'
import { COLORS, SIZES, FONT } from "../../../constants";

  const MultiSelectComponent = ({ handlePress, data, label}) => {
    return (
      <View >
        <Text style={styles.label}>{label}</Text>
        <MultipleSelectList 
            setSelected={handlePress} 
            data={data} 
            search={false}
        />
      </View>
    );
  };

  export default MultiSelectComponent;

  const styles = StyleSheet.create({
    label: {
        marginBottom: 5,
        fontSize: SIZES.medium,
        fontFamily: FONT.medium,
        color: COLORS.primary,
    },
  });