.class public Lcom/antivirus/core/scanners/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/antivirus/core/scanners/a/a/b;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/ArrayList;

.field public j:Ljava/util/ArrayList;

.field public k:Lcom/antivirus/core/scanners/a/a/d;

.field public l:Lcom/antivirus/core/scanners/a/a/d;

.field public m:Lcom/antivirus/core/scanners/a/a/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/antivirus/core/scanners/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/antivirus/core/scanners/a/a/c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/antivirus/core/scanners/a/a/c;->b:I

    iput p3, p0, Lcom/antivirus/core/scanners/a/a/c;->c:I

    iput p13, p0, Lcom/antivirus/core/scanners/a/a/c;->d:I

    iput-object p5, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    if-nez p4, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->e:Lcom/antivirus/core/scanners/a/a/b;

    if-nez p10, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->k:Lcom/antivirus/core/scanners/a/a/d;

    if-nez p11, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->l:Lcom/antivirus/core/scanners/a/a/d;

    if-nez p12, :cond_3

    :goto_3
    iput-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->m:Lcom/antivirus/core/scanners/a/a/d;

    return-void

    :cond_0
    new-instance v0, Lcom/antivirus/core/scanners/a/a/b;

    invoke-direct {v0, p4}, Lcom/antivirus/core/scanners/a/a/b;-><init>(Lcom/antivirus/core/scanners/a/a/b;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v0, p10}, Lcom/antivirus/core/scanners/a/a/d;-><init>(Lcom/antivirus/core/scanners/a/a/d;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v0, p11}, Lcom/antivirus/core/scanners/a/a/d;-><init>(Lcom/antivirus/core/scanners/a/a/d;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/antivirus/core/scanners/a/a/d;

    invoke-direct {v1, p12}, Lcom/antivirus/core/scanners/a/a/d;-><init>(Lcom/antivirus/core/scanners/a/a/d;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/a/a;I)I
    .locals 5

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/antivirus/core/scanners/a/a/c;->c:I

    if-le v0, p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->e:Lcom/antivirus/core/scanners/a/a/b;

    if-eqz v3, :cond_1

    move v3, v2

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, p1, Lcom/antivirus/core/scanners/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/antivirus/core/scanners/a/a/c;->e:Lcom/antivirus/core/scanners/a/a/b;

    iget-object v0, p1, Lcom/antivirus/core/scanners/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->k:Lcom/antivirus/core/scanners/a/a/d;

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->k:Lcom/antivirus/core/scanners/a/a/d;

    iget v3, p1, Lcom/antivirus/core/scanners/a/a;->k:I

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/a/a/d;->a(I)Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->l:Lcom/antivirus/core/scanners/a/a/d;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->l:Lcom/antivirus/core/scanners/a/a/d;

    iget v3, p1, Lcom/antivirus/core/scanners/a/a;->l:I

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/a/a/d;->a(I)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->m:Lcom/antivirus/core/scanners/a/a/d;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->m:Lcom/antivirus/core/scanners/a/a/d;

    iget v3, p1, Lcom/antivirus/core/scanners/a/a;->m:I

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/a/a/d;->a(I)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->g:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v2

    :goto_2
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/b;

    iget-object v4, p1, Lcom/antivirus/core/scanners/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/util/ArrayList;)Z

    move-result v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v2

    :cond_6
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v2

    :goto_3
    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/b;

    iget-object v4, p1, Lcom/antivirus/core/scanners/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/scanners/a/a/b;->a(Ljava/util/ArrayList;)Z

    move-result v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v2

    :cond_8
    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    move v3, v2

    :goto_4
    if-eqz v0, :cond_a

    iget-object v4, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/h;

    iget-object v4, p1, Lcom/antivirus/core/scanners/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/scanners/a/a/h;->b(Ljava/util/ArrayList;)Z

    move-result v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_4

    :cond_9
    move v0, v2

    :cond_a
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->e:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    move v3, v2

    :goto_5
    if-eqz v0, :cond_c

    iget-object v4, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/h;

    iget-object v4, p1, Lcom/antivirus/core/scanners/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/antivirus/core/scanners/a/a/h;->b(Ljava/util/ArrayList;)Z

    move-result v4

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_5

    :cond_b
    move v0, v2

    :cond_c
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    :goto_6
    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v0, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/a/a/g;

    iget-object v3, p1, Lcom/antivirus/core/scanners/a/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/a/a/g;->b(Ljava/util/ArrayList;)Z

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_d
    move v0, v2

    :cond_e
    if-eqz v0, :cond_f

    iget v0, p0, Lcom/antivirus/core/scanners/a/a/c;->c:I

    goto/16 :goto_0

    :cond_f
    move v0, v1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignatureObject [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usesengine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/antivirus/core/scanners/a/a/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/antivirus/core/scanners/a/a/c;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drywet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/antivirus/core/scanners/a/a/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->e:Lcom/antivirus/core/scanners/a/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usespermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagactivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->k:Lcom/antivirus/core/scanners/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagservice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->l:Lcom/antivirus/core/scanners/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagreceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/core/scanners/a/a/c;->m:Lcom/antivirus/core/scanners/a/a/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
