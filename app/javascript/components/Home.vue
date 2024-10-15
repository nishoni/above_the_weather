<template class="background">
    <!-- Hourly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-2/5 bg-gray-500/50 rounded m-10 p-3 grid-rows-3">
      <div class="hourly-forecast row-span-1 card-title my-3 ml-2 opacity-100">Hourly forecast</div>
      <hr>
      <div class="flex w-full">
        <div v-for="item in hourly_forecast" class="w-full mt-3">
          <div :class="hourlyCards(item.now)">
            <div class="hour row-span-1">
              {{ item.hour }}
            </div>
            <!-- <div>{{ item.icon }}</div> -->
            <img :src="'/assets/weather_icons/' + item.icon + '.png'"/>
            <div class="temperature row-span-1">
              {{ item.temperature }} C
            </div>
          </div>  
        </div>
      </div>
    </div>
  </div>
  <!-- Weekly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-2/5 bg-gray-500/50 rounded m-10 p-3 grid-rows-3">
      <div class="weekly-forecast row-span-1 my-3 ml-2 card-title">5-day forecast</div>
      <hr>
      <div class="flex w-full">
        <div class="w-1/6 m-2 bg-gray-800 rounded row-span-1 grid-rows-3">
          <div class="hour row-span-1">01</div>
          <img/>
          <div class="temperature row-span-1">21</div>
        </div>
      </div>
    </div>
  </div>
  <div class="flex w-full justify-end">
    <div class="flex w-2/5 rounded m-10 justify-between">
      <!-- UV -->
      <div class="bg-gray-600/50 rounded my-10 p-3 grid-rows-3">
        <div class="card-title row-span-1">UV index</div>
        <hr/>
        <div class="row-span-1">3</div>
        <div class="row-span-1">Moderate</div>
      </div>
      <!-- Wind -->
      <div class="bg-gray-600/50 rounded my-10 p-3 grid-rows-2">
        <div class="card-title row-span-1">Wind</div>
        <hr/>
        <div class="card-title row-span-1">3 MPH</div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: 'Home',
  data() {
    return {
      hourly_forecast: null
    }
  },
  created() {
    this.hourly_forecast = [
      {
        hour: 'Now',
        icon: 'cloudy',
        temperature: 21,
        now: true
      },
      {
        hour: '00',
        icon: 'rain',
        temperature: 20,
        now: false
      },
      {
        hour: '01',
        icon: 'sun',
        temperature: 17,
        now: false
      },
      {
        hour: '02',
        icon: 'snow',
        temperature: 15,
        now: false
      },
      {
        hour: '03',
        icon: 'rain',
        temperature: 15,
        now: false
      },
      {
        hour: '04',
        icon: 'night',
        temperature: 14,
        now: false
      },
    ]
  },
  methods: {
    // поменять цвет
    // сделать плавнее
    hourlyCards(card_type) {
      return [card_type ? 'bg-gray-800 m-2' : '', 'mb-6', 'rounded', 'text-center', 'p-2', 'hover:mt-4 hover:mb-2']
    }
  }
}
</script>
<style>
  * {
    font-family: system-ui;
    color: white;
    font-weight: bold
  }
  .card-title {
    font-size: 20px;
  }
</style>