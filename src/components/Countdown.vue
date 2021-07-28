<template>

    <v-card
        elevation="5"
        color="#af1df2"
        shaped 
    >
        <div class="outside-block">
            
            <div class="block">
                <p class="digit">{{ days | two_digits }}</p>
                <p class="text">Dias</p>
            </div>
            <div class="block">
                <p class="digit">{{ hours | two_digits }}</p>
                <p class="text">Horas</p>
            </div>
            <div class="block">
                <p class="digit">{{ minutes | two_digits }}</p>
                <p class="text">Minutos</p>
            </div>
            <div class="block">
                <p class="digit">{{ seconds | two_digits }}</p>
                <p class="text">Segundos</p>
            </div>
        </div>
    </v-card>
</template>
<script>
export default {
    mounted() {
        window.setInterval(() => {
            this.now = Math.trunc((new Date()).getTime() / 1000);
        },1);
    },

    props : {
        date : {
            coerce: str => Math.trunc(Date.parse(str) / 1000)
        }
    },

    data() {
        console.log(Math.trunc((new Date()).getTime() / 1000));
        return {
            now: Math.trunc((new Date()).getTime() / 1000)
        }
    },

    computed: {
        seconds() {
            return (this.date - this.now) % 60;
        },

        minutes() {
            return Math.trunc((this.date - this.now) / 60) % 60;
        },

        hours() {
            return Math.trunc((this.date - this.now) / 60 / 60) % 24;
        },

        days() {
            return Math.trunc((this.date - this.now) / 60 / 60 / 24);
        }
    }
}

</script>
<style scoped>
@import url(https://fonts.googleapis.com/css?family=Roboto+Condensed:400|Roboto:100);

.outside-block {
    display: flex;
    flex-wrap: wrap;
    cursor: context-menu;
}

.block {
    display: flex;
    flex-direction: column;
    margin: 10px;
}

.text {
    color: bisque;
    font-size: 40px;
    font-family: 'Roboto Condensed', serif;
    font-weight: 400;
    margin-top:10px;
    margin-bottom: 10px;
    text-align: center;
}

.digit {
    color: #ecf0f1;
    font-size: 120px;
    font-weight: 100;
    font-family: 'Roboto', serif;
    margin: 8px;
    text-align: center;
}

.v-card {
    width: fit-content;
}
</style>
