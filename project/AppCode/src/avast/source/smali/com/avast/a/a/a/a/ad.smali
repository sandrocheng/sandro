.class public final Lcom/avast/a/a/a/a/ad;
.super Lcom/google/a/l;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/af;


# static fields
.field private static final a:Lcom/avast/a/a/a/a/ad;


# instance fields
.field private b:I

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lcom/avast/a/a/a/a/r;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Z

.field private k:J

.field private l:Ljava/lang/Object;

.field private m:J

.field private n:J

.field private o:J

.field private p:B

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2324
    new-instance v0, Lcom/avast/a/a/a/a/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/ad;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/a/ad;->a:Lcom/avast/a/a/a/a/ad;

    .line 2325
    sget-object v0, Lcom/avast/a/a/a/a/ad;->a:Lcom/avast/a/a/a/a/ad;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/ad;->F()V

    .line 2326
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/a/ae;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 924
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 1171
    iput-byte v0, p0, Lcom/avast/a/a/a/a/ad;->p:B

    .line 1248
    iput v0, p0, Lcom/avast/a/a/a/a/ad;->q:I

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/a/ae;Lcom/avast/a/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/ad;-><init>(Lcom/avast/a/a/a/a/ae;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 926
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 1171
    iput-byte v0, p0, Lcom/avast/a/a/a/a/ad;->p:B

    .line 1248
    iput v0, p0, Lcom/avast/a/a/a/a/ad;->q:I

    .line 926
    return-void
.end method

.method private D()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    .line 1054
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1055
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1057
    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    .line 1060
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private E()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    .line 1116
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1117
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 1119
    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    .line 1122
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private F()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 1157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    .line 1158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    .line 1159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    .line 1160
    invoke-static {}, Lcom/avast/a/a/a/a/r;->a()Lcom/avast/a/a/a/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->f:Lcom/avast/a/a/a/a/r;

    .line 1161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    .line 1162
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    .line 1163
    iput v3, p0, Lcom/avast/a/a/a/a/ad;->i:I

    .line 1164
    iput-boolean v3, p0, Lcom/avast/a/a/a/a/ad;->j:Z

    .line 1165
    iput-wide v1, p0, Lcom/avast/a/a/a/a/ad;->k:J

    .line 1166
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    .line 1167
    iput-wide v1, p0, Lcom/avast/a/a/a/a/ad;->m:J

    .line 1168
    iput-wide v1, p0, Lcom/avast/a/a/a/a/ad;->n:J

    .line 1169
    iput-wide v1, p0, Lcom/avast/a/a/a/a/ad;->o:J

    .line 1170
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput p1, p0, Lcom/avast/a/a/a/a/ad;->i:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ad;->k:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/a/ad;
    .locals 1

    .prologue
    .line 930
    sget-object v0, Lcom/avast/a/a/a/a/ad;->a:Lcom/avast/a/a/a/a/ad;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;
    .locals 1
    .parameter

    .prologue
    .line 1387
    invoke-static {}, Lcom/avast/a/a/a/a/ad;->y()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/ae;->a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;Lcom/avast/a/a/a/a/r;)Lcom/avast/a/a/a/a/r;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->f:Lcom/avast/a/a/a/a/r;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/ad;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-boolean p1, p0, Lcom/avast/a/a/a/a/ad;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/ad;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput p1, p0, Lcom/avast/a/a/a/a/ad;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ad;->m:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/ad;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ad;->n:J

    return-wide p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/ad;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-wide p1, p0, Lcom/avast/a/a/a/a/ad;->o:J

    return-wide p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/a/a/a/a/ad;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/a/ad;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 919
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    return-object v0
.end method

.method public static y()Lcom/avast/a/a/a/a/ae;
    .locals 1

    .prologue
    .line 1384
    invoke-static {}, Lcom/avast/a/a/a/a/ae;->n()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->C()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 919
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->z()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/avast/a/a/a/a/ae;
    .locals 1

    .prologue
    .line 1389
    invoke-static {p0}, Lcom/avast/a/a/a/a/ad;->a(Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/avast/a/a/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/j;

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1206
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->w()I

    move v1, v2

    .line 1207
    :goto_0
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1210
    :goto_1
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1211
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1213
    :goto_2
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1214
    const/4 v3, 0x3

    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1216
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_3

    .line 1217
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->f:Lcom/avast/a/a/a/a/r;

    invoke-virtual {p1, v6, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1219
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1220
    const/4 v1, 0x5

    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 1219
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1222
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_5

    .line 1223
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/ad;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1225
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_6

    .line 1226
    const/4 v0, 0x7

    iget v1, p0, Lcom/avast/a/a/a/a/ad;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(II)V

    .line 1228
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_7

    .line 1229
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/ad;->j:Z

    invoke-virtual {p1, v7, v0}, Lcom/google/a/e;->a(IZ)V

    .line 1231
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 1232
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->k:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 1234
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9

    .line 1235
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/a/ad;->E()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 1237
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    .line 1238
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->m:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 1240
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_b

    .line 1241
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->n:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 1243
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_c

    .line 1244
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->o:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 1246
    :cond_c
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/avast/a/a/a/a/y;
    .locals 1
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/y;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/avast/a/a/a/a/g;
    .locals 1
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/a/a/a/a/g;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1005
    iget v1, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/avast/a/a/a/a/r;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->f:Lcom/avast/a/a/a/a/r;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 1036
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    .line 1040
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1041
    check-cast v0, Ljava/lang/String;

    .line 1049
    :goto_0
    return-object v0

    .line 1043
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 1045
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1046
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1047
    iput-object v1, p0, Lcom/avast/a/a/a/a/ad;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1049
    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1068
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 1071
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->i:I

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 1078
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/ad;->j:Z

    return v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 1088
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()J
    .locals 2

    .prologue
    .line 1091
    iget-wide v0, p0, Lcom/avast/a/a/a/a/ad;->k:J

    return-wide v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 1098
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    .line 1102
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1103
    check-cast v0, Ljava/lang/String;

    .line 1111
    :goto_0
    return-object v0

    .line 1105
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 1107
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1109
    iput-object v1, p0, Lcom/avast/a/a/a/a/ad;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 1111
    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 1130
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1133
    iget-wide v0, p0, Lcom/avast/a/a/a/a/ad;->m:J

    return-wide v0
.end method

.method public s()Z
    .locals 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1143
    iget-wide v0, p0, Lcom/avast/a/a/a/a/ad;->n:J

    return-wide v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 1150
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1173
    iget-byte v2, p0, Lcom/avast/a/a/a/a/ad;->p:B

    .line 1174
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 1201
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1174
    goto :goto_0

    :cond_1
    move v2, v1

    .line 1176
    :goto_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->b()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1177
    invoke-virtual {p0, v2}, Lcom/avast/a/a/a/a/ad;->a(I)Lcom/avast/a/a/a/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/a/a/a/a/j;->v()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1178
    iput-byte v1, p0, Lcom/avast/a/a/a/a/ad;->p:B

    goto :goto_1

    .line 1176
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 1182
    :goto_3
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->c()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1183
    invoke-virtual {p0, v2}, Lcom/avast/a/a/a/a/ad;->b(I)Lcom/avast/a/a/a/a/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/a/a/a/a/y;->v()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1184
    iput-byte v1, p0, Lcom/avast/a/a/a/a/ad;->p:B

    goto :goto_1

    .line 1182
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v2, v1

    .line 1188
    :goto_4
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->d()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1189
    invoke-virtual {p0, v2}, Lcom/avast/a/a/a/a/ad;->c(I)Lcom/avast/a/a/a/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/a/a/a/a/g;->v()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1190
    iput-byte v1, p0, Lcom/avast/a/a/a/a/ad;->p:B

    goto :goto_1

    .line 1188
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1194
    :cond_7
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1195
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/ad;->f()Lcom/avast/a/a/a/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/r;->v()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1196
    iput-byte v1, p0, Lcom/avast/a/a/a/a/ad;->p:B

    goto :goto_1

    .line 1200
    :cond_8
    iput-byte v0, p0, Lcom/avast/a/a/a/a/ad;->p:B

    move v1, v0

    .line 1201
    goto :goto_1
.end method

.method public w()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1250
    iget v3, p0, Lcom/avast/a/a/a/a/ad;->q:I

    .line 1251
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 1307
    :goto_0
    return v3

    :cond_0
    move v1, v2

    move v3, v2

    .line 1254
    :goto_1
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v5, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1258
    :goto_2
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v6, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1258
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    .line 1262
    :goto_3
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1263
    const/4 v4, 0x3

    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v4, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1266
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v5, :cond_4

    .line 1267
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->f:Lcom/avast/a/a/a/a/r;

    invoke-static {v7, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1270
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1271
    const/4 v1, 0x5

    iget-object v0, p0, Lcom/avast/a/a/a/a/ad;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/aa;

    invoke-static {v1, v0}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1270
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1274
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_6

    .line 1275
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/ad;->D()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1278
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v7, :cond_7

    .line 1279
    const/4 v0, 0x7

    iget v1, p0, Lcom/avast/a/a/a/a/ad;->i:I

    invoke-static {v0, v1}, Lcom/google/a/e;->f(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 1282
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v8, :cond_8

    .line 1283
    iget-boolean v0, p0, Lcom/avast/a/a/a/a/ad;->j:Z

    invoke-static {v8, v0}, Lcom/google/a/e;->b(IZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1286
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 1287
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->k:J

    invoke-static {v0, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1290
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    .line 1291
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/a/ad;->E()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1294
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_b

    .line 1295
    const/16 v0, 0xb

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->m:J

    invoke-static {v0, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1298
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    .line 1299
    const/16 v0, 0xc

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->n:J

    invoke-static {v0, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1302
    :cond_c
    iget v0, p0, Lcom/avast/a/a/a/a/ad;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_d

    .line 1303
    const/16 v0, 0xd

    iget-wide v1, p0, Lcom/avast/a/a/a/a/ad;->o:J

    invoke-static {v0, v1, v2}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1306
    :cond_d
    iput v3, p0, Lcom/avast/a/a/a/a/ad;->q:I

    goto/16 :goto_0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1153
    iget-wide v0, p0, Lcom/avast/a/a/a/a/ad;->o:J

    return-wide v0
.end method

.method public z()Lcom/avast/a/a/a/a/ae;
    .locals 1

    .prologue
    .line 1385
    invoke-static {}, Lcom/avast/a/a/a/a/ad;->y()Lcom/avast/a/a/a/a/ae;

    move-result-object v0

    return-object v0
.end method
