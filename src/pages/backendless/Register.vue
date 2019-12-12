<template lang='pug'>
Layout
    v-text-field(label='email' v-model='backendless.email')
    v-text-field(label='password' v-model='backendless.password')
    v-text-field(label='name' v-model='backendless.name')
    v-text-field(label='phoneNumber' v-model='backendless.phoneNumber')
    v-btn(@click='register') register
</template>

<script lang='coffee'>
import Backendless from 'backendless'
Backendless.initApp '1F0CDE1C-57F7-FAD9-FFBA-CEE415366100', '3814A1AD-DA70-4C12-92C8-2828D7CC90C1'
export default
    data: ->
        backendless:
            email: null
            password: null
            name: null
            phoneNumber: null
    methods:
        register: ->
            Backendless.UserService.register new Backendless.User @backendless
                .then (user) -> console.log "User has been registered:\n#{user}"
                .catch (error) -> console.log "Server reported an error: #{error.message}\nError code: #{error.code}\nHTTP status: #{error.status}"
</script>