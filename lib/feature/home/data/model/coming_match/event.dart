import 'package:equatable/equatable.dart';

class Event extends Equatable {
	final String? idEvent;
	final String? idApIfootball;
	final String? strEvent;
	final String? strEventAlternate;
	final String? strFilename;
	final String? strSport;
	final String? idLeague;
	final String? strLeague;
	final String? strLeagueBadge;
	final String? strSeason;
	final String? strDescriptionEn;
	final String? strHomeTeam;
	final String? strAwayTeam;
	final dynamic intHomeScore;
	final String? intRound;
	final dynamic intAwayScore;
	final dynamic intSpectators;
	final String? strOfficial;
	final String? strTimestamp;
	final String? dateEvent;
	final String? dateEventLocal;
	final String? strTime;
	final String? strTimeLocal;
	final String? strGroup;
	final String? idHomeTeam;
	final String? strHomeTeamBadge;
	final String? idAwayTeam;
	final String? strAwayTeamBadge;
	final dynamic intScore;
	final dynamic intScoreVotes;
	final String? strResult;
	final String? idVenue;
	final String? strVenue;
	final String? strCountry;
	final String? strCity;
	final String? strPoster;
	final String? strSquare;
	final dynamic strFanart;
	final String? strThumb;
	final String? strBanner;
	final dynamic strMap;
	final String? strTweet1;
	final String? strTweet2;
	final String? strTweet3;
	final String? strVideo;
	final String? strStatus;
	final String? strPostponed;
	final String? strLocked;

	const Event({
		this.idEvent, 
		this.idApIfootball, 
		this.strEvent, 
		this.strEventAlternate, 
		this.strFilename, 
		this.strSport, 
		this.idLeague, 
		this.strLeague, 
		this.strLeagueBadge, 
		this.strSeason, 
		this.strDescriptionEn, 
		this.strHomeTeam, 
		this.strAwayTeam, 
		this.intHomeScore, 
		this.intRound, 
		this.intAwayScore, 
		this.intSpectators, 
		this.strOfficial, 
		this.strTimestamp, 
		this.dateEvent, 
		this.dateEventLocal, 
		this.strTime, 
		this.strTimeLocal, 
		this.strGroup, 
		this.idHomeTeam, 
		this.strHomeTeamBadge, 
		this.idAwayTeam, 
		this.strAwayTeamBadge, 
		this.intScore, 
		this.intScoreVotes, 
		this.strResult, 
		this.idVenue, 
		this.strVenue, 
		this.strCountry, 
		this.strCity, 
		this.strPoster, 
		this.strSquare, 
		this.strFanart, 
		this.strThumb, 
		this.strBanner, 
		this.strMap, 
		this.strTweet1, 
		this.strTweet2, 
		this.strTweet3, 
		this.strVideo, 
		this.strStatus, 
		this.strPostponed, 
		this.strLocked, 
	});

	factory Event.fromJson(Map<String, dynamic> json) => Event(
				idEvent: json['idEvent'] as String?,
				idApIfootball: json['idAPIfootball'] as String?,
				strEvent: json['strEvent'] as String?,
				strEventAlternate: json['strEventAlternate'] as String?,
				strFilename: json['strFilename'] as String?,
				strSport: json['strSport'] as String?,
				idLeague: json['idLeague'] as String?,
				strLeague: json['strLeague'] as String?,
				strLeagueBadge: json['strLeagueBadge'] as String?,
				strSeason: json['strSeason'] as String?,
				strDescriptionEn: json['strDescriptionEN'] as String?,
				strHomeTeam: json['strHomeTeam'] as String?,
				strAwayTeam: json['strAwayTeam'] as String?,
				intHomeScore: json['intHomeScore'] as dynamic,
				intRound: json['intRound'] as String?,
				intAwayScore: json['intAwayScore'] as dynamic,
				intSpectators: json['intSpectators'] as dynamic,
				strOfficial: json['strOfficial'] as String?,
				strTimestamp: json['strTimestamp'] as String?,
				dateEvent: json['dateEvent'] as String?,
				dateEventLocal: json['dateEventLocal'] as String?,
				strTime: json['strTime'] as String?,
				strTimeLocal: json['strTimeLocal'] as String?,
				strGroup: json['strGroup'] as String?,
				idHomeTeam: json['idHomeTeam'] as String?,
				strHomeTeamBadge: json['strHomeTeamBadge'] as String?,
				idAwayTeam: json['idAwayTeam'] as String?,
				strAwayTeamBadge: json['strAwayTeamBadge'] as String?,
				intScore: json['intScore'] as dynamic,
				intScoreVotes: json['intScoreVotes'] as dynamic,
				strResult: json['strResult'] as String?,
				idVenue: json['idVenue'] as String?,
				strVenue: json['strVenue'] as String?,
				strCountry: json['strCountry'] as String?,
				strCity: json['strCity'] as String?,
				strPoster: json['strPoster'] as String?,
				strSquare: json['strSquare'] as String?,
				strFanart: json['strFanart'] as dynamic,
				strThumb: json['strThumb'] as String?,
				strBanner: json['strBanner'] as String?,
				strMap: json['strMap'] as dynamic,
				strTweet1: json['strTweet1'] as String?,
				strTweet2: json['strTweet2'] as String?,
				strTweet3: json['strTweet3'] as String?,
				strVideo: json['strVideo'] as String?,
				strStatus: json['strStatus'] as String?,
				strPostponed: json['strPostponed'] as String?,
				strLocked: json['strLocked'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'idEvent': idEvent,
				'idAPIfootball': idApIfootball,
				'strEvent': strEvent,
				'strEventAlternate': strEventAlternate,
				'strFilename': strFilename,
				'strSport': strSport,
				'idLeague': idLeague,
				'strLeague': strLeague,
				'strLeagueBadge': strLeagueBadge,
				'strSeason': strSeason,
				'strDescriptionEN': strDescriptionEn,
				'strHomeTeam': strHomeTeam,
				'strAwayTeam': strAwayTeam,
				'intHomeScore': intHomeScore,
				'intRound': intRound,
				'intAwayScore': intAwayScore,
				'intSpectators': intSpectators,
				'strOfficial': strOfficial,
				'strTimestamp': strTimestamp,
				'dateEvent': dateEvent,
				'dateEventLocal': dateEventLocal,
				'strTime': strTime,
				'strTimeLocal': strTimeLocal,
				'strGroup': strGroup,
				'idHomeTeam': idHomeTeam,
				'strHomeTeamBadge': strHomeTeamBadge,
				'idAwayTeam': idAwayTeam,
				'strAwayTeamBadge': strAwayTeamBadge,
				'intScore': intScore,
				'intScoreVotes': intScoreVotes,
				'strResult': strResult,
				'idVenue': idVenue,
				'strVenue': strVenue,
				'strCountry': strCountry,
				'strCity': strCity,
				'strPoster': strPoster,
				'strSquare': strSquare,
				'strFanart': strFanart,
				'strThumb': strThumb,
				'strBanner': strBanner,
				'strMap': strMap,
				'strTweet1': strTweet1,
				'strTweet2': strTweet2,
				'strTweet3': strTweet3,
				'strVideo': strVideo,
				'strStatus': strStatus,
				'strPostponed': strPostponed,
				'strLocked': strLocked,
			};

	@override
	List<Object?> get props {
		return [
				idEvent,
				idApIfootball,
				strEvent,
				strEventAlternate,
				strFilename,
				strSport,
				idLeague,
				strLeague,
				strLeagueBadge,
				strSeason,
				strDescriptionEn,
				strHomeTeam,
				strAwayTeam,
				intHomeScore,
				intRound,
				intAwayScore,
				intSpectators,
				strOfficial,
				strTimestamp,
				dateEvent,
				dateEventLocal,
				strTime,
				strTimeLocal,
				strGroup,
				idHomeTeam,
				strHomeTeamBadge,
				idAwayTeam,
				strAwayTeamBadge,
				intScore,
				intScoreVotes,
				strResult,
				idVenue,
				strVenue,
				strCountry,
				strCity,
				strPoster,
				strSquare,
				strFanart,
				strThumb,
				strBanner,
				strMap,
				strTweet1,
				strTweet2,
				strTweet3,
				strVideo,
				strStatus,
				strPostponed,
				strLocked,
		];
	}
}
