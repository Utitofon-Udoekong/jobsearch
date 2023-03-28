import { StyleSheet } from "react-native";

import { FONT, SIZES, COLORS } from "../../../constants";

const styles = StyleSheet.create({
  container: {
    marginTop: SIZES.xLarge,
  },
  header: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
  },
  headerTitle: {
    fontSize: SIZES.large,
    fontFamily: FONT.medium,
    color: COLORS.primary,
  },
  headerBtn: {
    fontSize: SIZES.medium,
    fontFamily: FONT.medium,
    color: COLORS.gray,
  },
  cardsContainer: {
    marginTop: SIZES.medium,
    display: "flex",
    flexDirection: "row",
    flexWrap: "wrap",
    gap: "10px"
  },
  cards: (backgroundColor) => ({
    borderRadius: SIZES.small,
    padding: SIZES.xSmall,
    height: "50px",
    width: "48%",
    backgroundColor: backgroundColor,
    display: "flex",
    justifyContent: "center",
    alignItems: "center",
    flexDirection: "row"
  }),
  cardsText: {
    fontSize: SIZES.medium,
    color: COLORS.white
  }
});

export default styles;
