package main

import (
	"errors"
	"github.com/datadog/stratus-red-team/pkg/stratus"
	"github.com/jedib0t/go-pretty/v6/table"
	"os"
)

func GetDisplayTable() table.Writer {
	t := table.NewWriter()
	t.SetStyle(table.StyleDefault)
	t.SetOutputMirror(os.Stdout)
	return t
}

func resolveTechniques(names []string) ([]*stratus.AttackTechnique, error) {
	var result []*stratus.AttackTechnique
	for i := range names {
		technique := stratus.GetRegistry().GetAttackTechniqueByName(names[i])
		if technique == nil {
			return nil, errors.New("unknown technique name " + names[i])
		}
		result = append(result, technique)
	}
	return result, nil
}
