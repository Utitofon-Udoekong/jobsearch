import { useState, useEffect } from "react";
import axios from 'axios'

const useFetch = (endpoint, query) => {
    const [data, setData] = useState([])
    const [isLoading, setIsLoading] = useState(false)
    const [error, setError] = useState(null)

    const options = {
        method: 'GET',
        url: `https://jsearch.p.rapidapi.com/${endpoint}`,
        params: { ...query},
        headers: {
            'X-RapidAPI-Key': 'd26b33c631mshcd49fd4eb646daap1538abjsn2f9ba2c6c420',
            'X-RapidAPI-Host': 'jsearch.p.rapidapi.com'
        }
    };

    const fetchData = async () => {
        setIsLoading(true)
        try {
            const response = await axios.request(options)
            setData(response.data.data)
            setIsLoading(false)
        } catch (error) {
            setError(error)
        } finally {
            setIsLoading(false)
        }
    }

    useEffect(() => {
        fetchData()
    },[])

    const refetch =() => {
        setIsLoading(true)
        fetchData()
    }

    return {
        data, error, refetch, isLoading
    }
}

export default useFetch