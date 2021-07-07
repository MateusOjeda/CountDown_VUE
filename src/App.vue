<template>
  <div id="app">
      <!-- Math.trunc((new Date(2021, 7, 5, 0, 0)).getTime() / 1000) -->
      <div class="global-card">
        <Countdown date=1628132400></Countdown>
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
}
</script>

<style>
#app{
    display: flex;
    justify-content: center;
}

body {
    background-color: #be4ef2;
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
    width: 80%;
}
</style>
