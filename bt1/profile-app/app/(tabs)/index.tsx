import { Link } from 'expo-router'
import { View, Text, Image, StyleSheet, TouchableOpacity } from 'react-native'

export default function App() {
  return (
    <View style={styles.container}>
      {/* Header */}
      <View style={styles.header}>
        <TouchableOpacity style={styles.iconBox}>
          <Link href='/_sitemap'>
            <Text style={styles.iconText}>🏠</Text>

            {/* <Text style={styles.iconText}>←</Text> */}
          </Link>
        </TouchableOpacity>

        <TouchableOpacity style={styles.iconBox}>
          <Text style={styles.iconText}>✎</Text>
        </TouchableOpacity>
      </View>

      {/* Avatar */}
      <Image
        source={{
          uri: 'https://i.pinimg.com/1200x/a5/fd/09/a5fd0940eb0434f02a73ccdc67b0d644.jpg'
        }}
        style={styles.avatar}
      />

      {/* Name */}
      <Text style={styles.name}>Văn Hình</Text>
      <Text style={styles.location}>UTH </Text>
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 80,
    alignItems: 'center',
    backgroundColor: '#fff'
  },

  header: {
    width: '100%',
    paddingHorizontal: 20,
    flexDirection: 'row',
    justifyContent: 'space-between',
    position: 'absolute',
    top: 40
  },

  iconBox: {
    width: 42,
    height: 42,
    borderRadius: 12,
    backgroundColor: '#F5F5F5',
    justifyContent: 'center',
    alignItems: 'center'
  },

  iconText: {
    fontSize: 20,
    fontWeight: 'bold'
  },

  avatar: {
    width: 150,
    height: 150,
    borderRadius: 75,
    marginTop: 80,
    marginBottom: 25
  },

  name: {
    fontSize: 26,
    fontWeight: 'bold'
  },

  location: {
    marginTop: 5,
    fontSize: 18,
    color: '#666'
  }
})
