.class public final Lcom/b/a/cq;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;
.implements Lcom/b/a/dj;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:[Lcom/b/a/gq;


# instance fields
.field private final b:I

.field private c:Lcom/b/a/aj;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/b/a/ct;

.field private final f:Lcom/b/a/cj;

.field private g:Lcom/b/a/cs;

.field private h:Lcom/b/a/cj;

.field private i:Lcom/b/a/cj;

.field private j:Lcom/b/a/co;

.field private k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 687
    invoke-static {}, Lcom/b/a/gq;->values()[Lcom/b/a/gq;

    move-result-object v0

    sput-object v0, Lcom/b/a/cq;->a:[Lcom/b/a/gq;

    .line 863
    invoke-static {}, Lcom/b/a/cs;->values()[Lcom/b/a/cs;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/b/a/an;->values()[Lcom/b/a/an;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 864
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Desrciptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/aj;Lcom/b/a/ct;Lcom/b/a/cj;IZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/cq;-><init>(Lcom/b/a/aj;Lcom/b/a/ct;Lcom/b/a/cj;IZB)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/aj;Lcom/b/a/ct;Lcom/b/a/cj;IZB)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput p4, p0, Lcom/b/a/cq;->b:I

    .line 899
    iput-object p1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    .line 900
    invoke-virtual {p1}, Lcom/b/a/aj;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/b/a/ch;->a(Lcom/b/a/ct;Lcom/b/a/cj;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->d:Ljava/lang/String;

    .line 901
    iput-object p2, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    .line 903
    invoke-virtual {p1}, Lcom/b/a/aj;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p1}, Lcom/b/a/aj;->o()Lcom/b/a/an;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cs;->a(Lcom/b/a/an;)Lcom/b/a/cs;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->k()I

    move-result v0

    if-gtz v0, :cond_1

    .line 908
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Field numbers must be positive integers."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_1
    invoke-virtual {p1}, Lcom/b/a/aj;->w()Lcom/b/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aq;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/b/a/cq;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 914
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_2
    if-eqz p5, :cond_5

    .line 920
    invoke-virtual {p1}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 921
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_3
    iput-object v1, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    .line 925
    if-eqz p3, :cond_4

    .line 926
    iput-object p3, p0, Lcom/b/a/cq;->f:Lcom/b/a/cj;

    .line 939
    :goto_0
    invoke-static {p2}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cv;)V

    .line 940
    return-void

    .line 928
    :cond_4
    iput-object v1, p0, Lcom/b/a/cq;->f:Lcom/b/a/cj;

    goto :goto_0

    .line 931
    :cond_5
    invoke-virtual {p1}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 932
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 935
    :cond_6
    iput-object p3, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    .line 936
    iput-object v1, p0, Lcom/b/a/cq;->f:Lcom/b/a/cj;

    goto :goto_0
.end method

.method private a(Lcom/b/a/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    .line 1131
    return-void
.end method

.method static synthetic a(Lcom/b/a/cq;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x22

    .line 639
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_0

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/cj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->n()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/b/a/cj;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    iput-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v1, v2, :cond_6

    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_5

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v1, v0, Lcom/b/a/co;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    iput-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_5
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cq;->i:Lcom/b/a/cj;

    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v1, v2, :cond_9

    instance-of v1, v0, Lcom/b/a/co;

    if-nez v1, :cond_7

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_7
    check-cast v0, Lcom/b/a/co;

    iput-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    :cond_8
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_8

    :cond_b
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_c
    :try_start_0
    sget-object v0, Lcom/b/a/ci;->a:[I

    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cq;)V

    :cond_e
    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/b/a/cq;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    sget-object v1, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-eq v0, v1, :cond_19

    :cond_f
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/b/a/cn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse default value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v3}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x7fc0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/high16 v0, 0x7ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-wide/high16 v0, -0x10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-wide/high16 v0, 0x7ff8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :pswitch_8
    :try_start_3
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;)Lcom/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/b/a/ga; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/b/a/cn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/b/a/ga;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_9
    iget-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/co;->a(Ljava/lang/String;)Lcom/b/a/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    iget-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    if-nez v0, :cond_d

    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum default value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :pswitch_a
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_16
    invoke-virtual {p0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_17
    sget-object v0, Lcom/b/a/ci;->b:[I

    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cr;->a(Lcom/b/a/cr;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_18
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    :cond_19
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(Lcom/b/a/cq;Lcom/b/a/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    return-void
.end method

.method private b(Lcom/b/a/cq;)I
    .locals 2
    .parameter

    .prologue
    .line 803
    iget-object v0, p1, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->k()I

    move-result v0

    iget-object v1, p1, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->k()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private w()Lcom/b/a/aj;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    return-object v0
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->t()Z

    move-result v0

    return v0
.end method

.method private y()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->w()Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private z()V
    .locals 5

    .prologue
    const/16 v4, 0x22

    .line 944
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    .line 947
    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_0

    .line 948
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    .line 953
    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/b/a/cj;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    invoke-virtual {v2}, Lcom/b/a/cj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as an extension number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 962
    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ck;->a(Ljava/lang/String;Lcom/b/a/cv;)Lcom/b/a/cv;

    move-result-object v0

    .line 965
    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 967
    instance-of v1, v0, Lcom/b/a/cj;

    if-eqz v1, :cond_3

    .line 968
    sget-object v1, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    iput-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    .line 977
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v1, v2, :cond_6

    .line 978
    instance-of v1, v0, Lcom/b/a/cj;

    if-nez v1, :cond_5

    .line 979
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a message type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_3
    instance-of v1, v0, Lcom/b/a/co;

    if-eqz v1, :cond_4

    .line 970
    sget-object v1, Lcom/b/a/cs;->n:Lcom/b/a/cs;

    iput-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    goto :goto_0

    .line 972
    :cond_4
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_5
    check-cast v0, Lcom/b/a/cj;

    iput-object v0, p0, Lcom/b/a/cq;->i:Lcom/b/a/cj;

    .line 984
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 985
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_6
    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    sget-object v2, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v1, v2, :cond_9

    .line 989
    instance-of v1, v0, Lcom/b/a/co;

    if-nez v1, :cond_7

    .line 990
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_7
    check-cast v0, Lcom/b/a/co;

    iput-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    .line 1008
    :cond_8
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->t()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1009
    invoke-virtual {p0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1010
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_9
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 999
    :cond_a
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-ne v0, v1, :cond_8

    .line 1001
    :cond_b
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_c
    :try_start_0
    sget-object v0, Lcom/b/a/ci;->a:[I

    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    .line 1110
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1111
    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    invoke-static {v0}, Lcom/b/a/ct;->a(Lcom/b/a/ct;)Lcom/b/a/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ck;->a(Lcom/b/a/cq;)V

    .line 1114
    :cond_e
    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    invoke-virtual {v0}, Lcom/b/a/cj;->d()Lcom/b/a/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1116
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1117
    invoke-virtual {p0}, Lcom/b/a/cq;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    sget-object v1, Lcom/b/a/cs;->k:Lcom/b/a/cs;

    if-eq v0, v1, :cond_19

    .line 1118
    :cond_f
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1019
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    new-instance v1, Lcom/b/a/cn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse default value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v3}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1023
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1028
    :pswitch_2
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->d(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1032
    :pswitch_3
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->e(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1035
    :pswitch_4
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1036
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1037
    :cond_10
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1038
    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1039
    :cond_11
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1040
    const/high16 v0, 0x7fc0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1042
    :cond_12
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1046
    :pswitch_5
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1047
    const-wide/high16 v0, 0x7ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1048
    :cond_13
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-inf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1049
    const-wide/high16 v0, -0x10

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1050
    :cond_14
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1051
    const-wide/high16 v0, 0x7ff8

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1053
    :cond_15
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1057
    :pswitch_6
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1060
    :pswitch_7
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1064
    :pswitch_8
    :try_start_3
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/fy;->a(Ljava/lang/CharSequence;)Lcom/b/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;
    :try_end_3
    .catch Lcom/b/a/ga; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1066
    :catch_1
    move-exception v0

    .line 1067
    :try_start_4
    new-instance v1, Lcom/b/a/cn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse default value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/b/a/ga;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1072
    :pswitch_9
    iget-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    iget-object v1, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/co;->a(Ljava/lang/String;)Lcom/b/a/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    .line 1073
    iget-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 1074
    new-instance v0, Lcom/b/a/cn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum default value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v2}, Lcom/b/a/aj;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1081
    :pswitch_a
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1091
    :cond_16
    invoke-virtual {p0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1092
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1094
    :cond_17
    sget-object v0, Lcom/b/a/ci;->b:[I

    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1104
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/cr;->a(Lcom/b/a/cr;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1098
    :pswitch_b
    iget-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    invoke-virtual {v0}, Lcom/b/a/co;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1101
    :pswitch_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1122
    :cond_18
    new-instance v0, Lcom/b/a/cn;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1}, Lcom/b/a/cn;-><init>(Lcom/b/a/cv;Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_19
    return-void

    .line 1015
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 1094
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/b/a/ey;Lcom/b/a/ex;)Lcom/b/a/ey;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1141
    check-cast p1, Lcom/b/a/ew;

    check-cast p2, Lcom/b/a/ev;

    invoke-interface {p1, p2}, Lcom/b/a/ew;->c(Lcom/b/a/ev;)Lcom/b/a/ew;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/b/a/cq;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/b/a/cq;->e:Lcom/b/a/ct;

    return-object v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 639
    check-cast p1, Lcom/b/a/cq;

    iget-object v0, p1, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    iget-object v1, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->k()I

    move-result v0

    iget-object v1, p1, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v1}, Lcom/b/a/aj;->k()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/b/a/cq;->b:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->k()I

    move-result v0

    return v0
.end method

.method public final f()Lcom/b/a/cr;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/b/a/gv;
    .locals 1

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gq;->a()Lcom/b/a/gv;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/b/a/cs;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    return-object v0
.end method

.method public final j()Lcom/b/a/gq;
    .locals 2

    .prologue
    .line 682
    sget-object v0, Lcom/b/a/cq;->a:[Lcom/b/a/gq;

    iget-object v1, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v1}, Lcom/b/a/cs;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->m()Lcom/b/a/al;

    move-result-object v0

    sget-object v1, Lcom/b/a/al;->b:Lcom/b/a/al;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->m()Lcom/b/a/al;

    move-result-object v0

    sget-object v1, Lcom/b/a/al;->a:Lcom/b/a/al;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->m()Lcom/b/a/al;

    move-result-object v0

    sget-object v1, Lcom/b/a/al;->c:Lcom/b/a/al;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->w()Lcom/b/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/aq;->k()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/b/a/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/cq;->j()Lcom/b/a/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/gq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-ne v0, v1, :cond_0

    .line 725
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    return v0
.end method

.method public final r()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/b/a/cq;->h:Lcom/b/a/cj;

    return-object v0
.end method

.method public final s()Lcom/b/a/cj;
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/b/a/cq;->c:Lcom/b/a/aj;

    invoke-virtual {v0}, Lcom/b/a/aj;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not an extension."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->f:Lcom/b/a/cj;

    return-object v0
.end method

.method public final t()Lcom/b/a/cj;
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->i:Lcom/b/a/cr;

    if-eq v0, v1, :cond_0

    .line 777
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->i:Lcom/b/a/cj;

    return-object v0
.end method

.method public final u()Lcom/b/a/co;
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/b/a/cq;->g:Lcom/b/a/cs;

    invoke-virtual {v0}, Lcom/b/a/cs;->a()Lcom/b/a/cr;

    move-result-object v0

    sget-object v1, Lcom/b/a/cr;->h:Lcom/b/a/cr;

    if-eq v0, v1, :cond_0

    .line 786
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/b/a/cq;->j:Lcom/b/a/co;

    return-object v0
.end method

.method public final synthetic v()Lcom/b/a/er;
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/b/a/cq;->u()Lcom/b/a/co;

    move-result-object v0

    return-object v0
.end method
