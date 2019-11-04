class Testimonial {
    static all(then) {
        return axios.get('/testimonials').then(({ data }) => then(data));
    }
}

export default Testimonial;
