import Vue from 'vue';
import MyButton from 'nuxt-project/components/MyButton.vue';

export default { title: 'MyButton' };

export const Default = () => ({
  components: { MyButton },
  template: '<my-button title="Default" />'
});

export const WithEmoji = () => ({
  components: { MyButton },
  template: '<my-button title="😀 😎 👍 💯" />'
});