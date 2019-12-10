import React from 'react';
import CalendarEvent from './calendar-event.jsx';
import EventDetails from './event-details.jsx';

const events = [{ date: 'October 25', name: "Laguna Hill's Farmer's Market", day: 'Friday', time: '9AM-1PM' },
  { date: 'October 25', name: "Laguna Hill's Farmer's Market", day: 'Friday', time: '9AM-1PM' },
  { date: 'October 25', name: "Laguna Hill's Farmer's Market", day: 'Friday', time: '9AM-1PM' },
  { date: 'October 25', name: "Laguna Hill's Farmer's Market", day: 'Friday', time: '9AM-1PM' }];

class EventsPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      events: events,
      eventDetails: null
    };
    this.getSingleEventInfo = this.getSingleEventInfo.bind(this);
  }

  getNearbyEvents(position) {
    const location = '' + position.coords.latitude + position.coords.longitude;
    fetch(`/api/maps-list?location=${location}`)
      .then(res => res.json())
      .then(events => this.setState({ events }));
  }

  getLocationThenEvents() {
    navigator.geolocation.getCurrentPosition(this.getNearbyEvents);
  }

  getSingleEventInfo(eventName) {
    const reqs = {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        name: eventName
      })
    };
    fetch('/api/maps-details', reqs)
      .then(res => res.json())
      // .then(eventDetails => this.setState({ eventDetails }))
      .catch(err => console.error(err))
    ;
  }

  componentDidMount() {
    // getLocationThenEvents();
  }

  render() {
    const calendarEvents = this.state.events.map((event, index) => {
      return <CalendarEvent onClick={this.getSingleEventInfo} info={event} key={index} />;
    });
    const eventDetails = this.state.eventDetails ? <EventDetails info={this.state.eventDetails} /> : null;
    return (
      <div>
        <h6 className="text-center green">Map goes here</h6>
        <div className='container'>
          <h1 className="green">{"Farmer's Markets"}</h1>
        </div>
        <div className="events-list no-gutters d-flex">
          {calendarEvents}
        </div>
        {eventDetails}
      </div>
    );
  }
}
export default EventsPage;