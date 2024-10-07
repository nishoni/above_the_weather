<template>
    <!-- Hourly forecast -->
  <div class="flex w-full justify-end">
    <div class="w-1/3 bg-gray-500/50 rounded m-10 p-3 grid-rows-3">
      <div class="hourly-forecast row-span-1 card-title opacity-100">Here dynamic forecast in words from back</div>
      <hr>
      <div class="flex w-full">
        <div v-for="item in hourly_forecast" class="w-full">
          <div class="m-2 bg-gray-800 rounded text-center">
            <div class="hour row-span-1">
              {{ item.hour }}
            </div>
            <!-- <div>{{ item.icon }}</div> -->
            <img :src="Image_url('weather_icons/rain.png')"/>
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
    <div class="w-1/3 bg-gray-500/50 rounded m-10 p-3 grid-rows-3">
      <div class="weekly-forecast row-span-1 card-title">Here dynamic forecast in words from back</div>
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
    <div class="flex w-1/3 rounded m-10 justify-between">
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
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 21
      },
      {
        hour: '00',
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 20
      },
      {
        hour: '01',
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 17
      },
      {
        hour: '02',
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 15
      },
      {
        hour: '03',
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 15
      },
      {
        hour: '04',
        icon: new URL('https://localhost/assets/images/weather_icons/rain.png'),
        temperature: 14
      },
    ]
  }
}
</script>
<style>
  * {
    font-family: "Fira Sans", sans-serif;
    color: white
  }
  .card-title {
    font-size: large;
  }
</style>