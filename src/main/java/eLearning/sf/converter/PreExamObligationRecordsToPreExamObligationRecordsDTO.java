package eLearning.sf.converter;

import java.util.ArrayList;
import java.util.List;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import eLearning.sf.dto.PreExamObligationsRecordsDTO;
import eLearning.sf.model.PreExamObligationsRecords;

@Component
public class PreExamObligationRecordsToPreExamObligationRecordsDTO implements Converter<PreExamObligationsRecords, PreExamObligationsRecordsDTO> {

	@Override
	public PreExamObligationsRecordsDTO convert(PreExamObligationsRecords arg0) {
		PreExamObligationsRecordsDTO p = new PreExamObligationsRecordsDTO();
		if (arg0.getPoints() != null) {
			p.setPoints(arg0.getPoints());
		}
		p.setPreExamObligationsRecordsId(arg0.getPreExamORecordsId());
		p.setPreExamOName(arg0.getPreExamObligation().getName());
		p.setMaxPoints(arg0.getPreExamObligation().getMaxPoints());
		p.setStudentId(arg0.getStudent().getStudentId());
		p.setTrNumber(arg0.getStudent().getTranscriptNumber());
		p.setStudentName(arg0.getStudent().getUser().getFirstName());
		p.setStudentLastName(arg0.getStudent().getUser().getLastName());
		p.setDate(arg0.getDate());
		p.setPassed(arg0.isPassed());
		p.setPreExamObligationId(arg0.getPreExamObligation().getPreExamOId());
		p.setActive(arg0.isActive());
		
		return p;
	}

	public List<PreExamObligationsRecordsDTO> convert(List<PreExamObligationsRecords> argS){
		
		List<PreExamObligationsRecordsDTO> retVal = new ArrayList<>();
		
		for (PreExamObligationsRecords p : argS) {
			retVal.add(convert(p));
		}
		return retVal;
		
	}
}
