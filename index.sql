CREATE INDEX idxalunocurso ON public.aluno USING btree (curso);

CREATE UNIQUE INDEX idxalunonni ON public.aluno USING btree (nome, nomemae, idade);

CREATE INDEX idxalunoperiodo ON public.aluno USING btree (periodo);

CREATE INDEX idxtel ON public.aluno USING btree (((informacoesextras ->> 'numerotel'::text)));

CREATE INDEX idxtime ON public.aluno USING btree (((informacoesextras ->> 'time'::text)));

CREATE UNIQUE INDEX pkaluno ON public.aluno USING btree (ra);

CREATE INDEX idxdiscip ON public.discip USING btree (monitor);

CREATE UNIQUE INDEX pkdiscip ON public.discip USING btree (sigla);

CREATE INDEX idxmatricula ON public.matricula USING btree (ra);

CREATE UNIQUE INDEX pkmatricula ON public.matricula USING btree (codturma);
