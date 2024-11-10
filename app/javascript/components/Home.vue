<template class="background">
  <!-- Main info -->
   <div class='flex'>23</div>
    <!-- Hourly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-2/5 bg-gray-500/50 rounded m-10 mb-2 p-3 grid-rows-3">
      <div class="hourly-forecast row-span-1 card-title my-3 ml-2 opacity-100">Hourly forecast</div>
      <hr>
      <div class="flex w-full">
        <div v-for="item in hourly_forecast" class="w-full mt-3">
          <div :class="hourlyCards(item.now)">
            <div class="hour row-span-1 hourly-titles mb-2">
              {{ item.hour }}
            </div>
            <img width="60" height="60" class="m-2" :src="'/assets/weather_icons/' + item.icon + '.png'"/>
            <div class="temperature row-span-1 flex ml-5 mt-3">
              <div class="text-xl font-bold">{{ item.temperature }}</div>
              <div class="text-sm font-bold ml-1">C</div>
            </div>
          </div>  
        </div>
      </div>
    </div>
  </div>
  <div class="flex w-full justify-end">
    <div class="flex w-2/5 rounded mt-5 m-10 justify-between">
      <!-- UV -->
      <div class="bg-gray-600/50 rounded mb-2 p-3 grid-rows-3">
        <div class="card-title my-2 ml-2 row-span-1">UV index</div>
        <hr/>
        <div class="w-full mt-3 justify-center">
          <div class="row-span-1 text-5xl">3</div>
          <div class="row-span-1 text-xl mt-3">Moderate</div>
        </div>
      </div>
      <!-- Wind -->
      <div class="bg-gray-600/50 rounded mb-2 p-3 grid-rows-2">
        <div class="card-title my-3 ml-2 row-span-1">Wind</div>
        <hr/>
        <div class="mt-5">
          <div class="row-span-1 text-5xl">3</div>
          <div class="row-span-1 text-xl mt-3">MPH</div>
        </div>
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
        hour: '00:00',
        icon: 'rain',
        temperature: 20,
        now: false
      },
      {
        hour: '01:00',
        icon: 'sun',
        temperature: 17,
        now: false
      },
      {
        hour: '02:00',
        icon: 'snow',
        temperature: 15,
        now: false
      },
      {
        hour: '03:00',
        icon: 'rain',
        temperature: 15,
        now: false
      },
      {
        hour: '04:00',
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
      return [card_type ? 'bg-gray-800' : '', 'mb-6', 'rounded', 'text-center', 'p-2', 'target', 'mx-1']
    }
  }
}
</script>
<style>
  * {
    font-family: system-ui;
    color: white;
  }
  .card-title {
    font-size: 25px;
    font-weight: bold;
  }
  .hourly-titles {
    font-size: 20px;
    font-weight: bold;
  }
  .target {
    margin-top: 20px;
    transition: margin-top 0.5s;
  }
  .target:hover {
    margin-top: 4px;
    background-color: rgb(105 105 105);
  }
</style>