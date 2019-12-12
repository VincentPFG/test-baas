<template lang='pug'>
Layout
    #firebaseui-auth-container
</template>

<script lang='coffee'>
import * as firebase from 'firebase'
import * as firebaseui from 'firebaseui'
import 'firebaseui/dist/firebaseui.css'

export default
    mounted: ->
        firebase.initializeApp
            apiKey: "AIzaSyCpPUeuaA_DUciiCLvIeQT8CRkcT0D0RF8"
            authDomain: "test-16b2b.firebaseapp.com"
            databaseURL: "https://test-16b2b.firebaseio.com"
            projectId: "test-16b2b"
            storageBucket: "test-16b2b.appspot.com"
            messagingSenderId: "733990324657"
            appId: "1:733990324657:web:fae918551a3002b6595590"
            measurementId: "G-XZ92JXW4L2"

        firebase.analytics()

        new firebaseui.auth.AuthUI firebase.auth()
            .start '#firebaseui-auth-container',
                signInOptions: [
                    firebase.auth.EmailAuthProvider.PROVIDER_ID
                ]
</script>