.class public final Lcom/qq/taf/jce/JceDisplayer;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    iput-object p1, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    iput-object p1, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iput p2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, 0x3ff3333333333333L

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private ps(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p3}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p3}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v0, 0x7d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceStruct;->display(Ljava/lang/StringBuilder;I)V

    goto :goto_0
.end method

.method public display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lcom/qq/taf/jce/JceStruct;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, [B

    if-eqz v0, :cond_c

    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, [Z

    if-eqz v0, :cond_d

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, [S

    if-eqz v0, :cond_e

    check-cast p1, [S

    check-cast p1, [S

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_e
    instance-of v0, p1, [I

    if-eqz v0, :cond_f

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, [J

    if-eqz v0, :cond_10

    check-cast p1, [J

    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_10
    instance-of v0, p1, [F

    if-eqz v0, :cond_11

    check-cast p1, [F

    check-cast p1, [F

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_11
    instance-of v0, p1, [D

    if-eqz v0, :cond_12

    check-cast p1, [D

    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_13

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto/16 :goto_0

    :cond_13
    new-instance v0, Lpuw/a;

    const-string v1, "write object error: unsupport type."

    invoke-direct {v0, v1}, Lpuw/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qq/taf/jce/JceDisplayer;->display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    move-result-object p0

    goto :goto_0
.end method

.method public display(Ljava/util/Map;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    const/16 v2, 0xa

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    new-instance v2, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/16 v4, 0x28

    invoke-virtual {v1, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    const/16 v0, 0x29

    invoke-virtual {v1, v0, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_1

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {p0, v0, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 2

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v0, 0x54

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0

    :cond_0
    const/16 v0, 0x46

    goto :goto_0
.end method

.method public display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-byte v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-char v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(FLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-wide v3, p1, v0

    invoke-virtual {v1, v3, v4, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v5}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/qq/taf/jce/JceDisplayer;"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/Object;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method

.method public display([SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p2}, Lcom/qq/taf/jce/JceDisplayer;->ps(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/qq/taf/jce/JceDisplayer;

    iget-object v0, p0, Lcom/qq/taf/jce/JceDisplayer;->a:Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qq/taf/jce/JceDisplayer;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-short v3, p1, v0

    invoke-virtual {v1, v3, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {p0, v0, v4}, Lcom/qq/taf/jce/JceDisplayer;->display(CLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    goto :goto_0
.end method
