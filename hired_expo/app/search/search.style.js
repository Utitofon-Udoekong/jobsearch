
import { StyleSheet } from 'react-native'
import { FONT, SIZES, COLORS } from "../../constants"

const styles = StyleSheet.create({

    ModalContent: {
        backgroundColor: COLORS.lightWhite,
        padding: 22,
        position: "relative",
        borderRadius: 4,
        borderColor: 'rgba(0, 0, 0, 0.1)',
      },
      closeModalBtn: {
        display: "flex",
        alignItems: "flex-end"
      },
      searchContainer: {
        justifyContent: "center",
        alignItems: "center",
        flexDirection: "row",
        marginBottom: SIZES.large,
        height: 50,
      },
      searchWrapper: {
        flex: 1,
        backgroundColor: "transparent",
        marginRight: SIZES.small,
        justifyContent: "center",
        alignItems: "center",
        borderWidth: "2px",
        borderColor: "#bbb",
        borderStyle: "solid",
        borderRadius: SIZES.small,
        height: "100%",
      },
      searchInput: {
        fontFamily: FONT.regular,
        width: "100%",
        height: "100%",
        paddingHorizontal: SIZES.medium,
      },
});

export default styles