<template>
  <div id="app">
      <!-- Math.trunc((new Date(2021, 7, 5, 0, 0)).getTime() / 1000) -->
      <Countdown date=1628132400></Countdown>
  </div>
</template>

<script>
import Countdown from './components/Countdown.vue';

export default {
    components: { Countdown },
}
</script>

<style>
#app{
    align-items: center;
    bottom: 0;
    background-color: #af1df2;
    display: flex;
    justify-content: center;
    left: 0;
    position: absolute;
    right: 0;
    top:0;
}
</style>
