import React from 'react';
import { Link } from 'react-router-dom';
import Badge from './badge';

class SeasonalProducePage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      produceList: [],
      featuredProduce: [],
      isCurrentSeason: false
    };
    this.headerImageClass = '';
    this.name = props.match.params.name;
    this.getProduceList = this.getProduceList.bind(this);
  }

  getProduceList() {
    fetch(`/api/produce-in-season?seasonName=${this.name}`)
      .then(results => results.json())
      .then(data => {
        const { produceList, isCurrentSeason } = data;
        this.setState({ produceList, isCurrentSeason }, this.getFeaturedProduce);
      })
      .catch(error => console.error(error.message));
  }

  getFeaturedProduce() {
    fetch(`/api/random-produce?seasonName=${this.name}&randCount=4`)
      .then(results => results.json())
      .then(featuredProduce => this.setState({ featuredProduce }))
      .catch(error => console.error(error.message));
  }

  componentDidMount() {
    this.getProduceList();
  }

  render() {
    const style = { backgroundImage: `url(/assets/images/${this.name.toLowerCase()}-header.jpg)` };
    let produceElems;
    let featuredElems;
    let isInSeasonBadge;
    if (this.state.isCurrentSeason) {
      isInSeasonBadge = (<Badge message='In season now' faClass='fas fa-lg fa-exclamation' />);
    }
    if (this.state.produceList.length) {
      produceElems = this.state.produceList.map(produce => (
        <li className='my-2' key={produce.id}>
          <Link to={`/produce/${produce.name}`}><u>- {produce.name}</u></Link>
        </li>
      ));
      featuredElems = this.state.featuredProduce.map(produce => (
        <div className='d-flex flex-column col-6' key={produce.id}>
          <Link to={`/produce/${produce.name}`}>
            <img
              className='featured-produce-image shadow-sm'
              src={produce.produceImg}
              alt={produce.name}
            />
            <p><u>{produce.name}</u></p>
          </Link>
        </div>
      ));
    }
    return (
      <>
        <div className='header d-flex justify-content-center' style={style}>
          <div className='align-self-end mb-4'>{isInSeasonBadge}</div>
        </div>
        <div className="container">
          <h1 className='green text-center font-rubik my-3'>{this.name} Produce</h1>
          <div className="row">{featuredElems}</div>
          <hr className='primary-label' />
        </div>
        <ul>{produceElems}</ul>
      </>
    );
  }
}
export default SeasonalProducePage;
