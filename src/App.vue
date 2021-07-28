<template>
  <div id="app">
    <!-- Math.trunc((new Date(2021, 8, 1, 0, 0)).getTime() / 1000) -->
    <div v-if="timestamp < 1627806900" class="global-card">
        <Countdown date=1627806900></Countdown>
    </div>
    <div v-else class="iframe">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/4WWdGs_bGeY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <div class="galery-test">
        <Galery></Galery>
    </div>
  </div>
</template>

<script>
import Countdown from './components/Countdown.vue';
import Galery from './components/Galery.vue';

export default {
    components: { Countdown, Galery },

    mounted() {
        window.setInterval(() => {
            this.now = Math.trunc((new Date()).getTime() / 1000);
        },1);
    },

    data() {
        console.log(Math.trunc((new Date()).getTime() / 1000));
        return {
            now: Math.trunc((new Date()).getTime() / 1000)
        }
    },

    computed: {
        timestamp() {
            return this.now;
        },
    }
}
</script>

<style>
#app{
    display: flex;
    justify-content: center;
}

body {
    background-color: #be4ef2;
    min-width: 1000px;
}

.iframe {
    width: 100%;
    height: 100vh;
}

.global-card {
    width: 80%;
    display: flex;
    justify-content: center;
    margin-top: 80px;
}

.galery-test {
    position: absolute;
    z-index: -1;
    width: 650px;
    left: 0;
    margin-top: 120px;
}
</style>
