.class public final Lcom/avast/a/a/a/a/j;
.super Lcom/google/a/l;
.source "ATProtoGenerics.java"

# interfaces
.implements Lcom/avast/a/a/a/a/l;


# static fields
.field private static final a:Lcom/avast/a/a/a/a/j;


# instance fields
.field private b:I

.field private c:J

.field private d:Ljava/lang/Object;

.field private e:Lcom/google/a/z;

.field private f:Lcom/google/a/z;

.field private g:J

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Lcom/google/a/c;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4861
    new-instance v0, Lcom/avast/a/a/a/a/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/a/j;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/a/j;->a:Lcom/avast/a/a/a/a/j;

    .line 4862
    sget-object v0, Lcom/avast/a/a/a/a/j;->a:Lcom/avast/a/a/a/a/j;

    invoke-direct {v0}, Lcom/avast/a/a/a/a/j;->u()V

    .line 4863
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/a/k;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4035
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 4191
    iput-byte v0, p0, Lcom/avast/a/a/a/a/j;->k:B

    .line 4233
    iput v0, p0, Lcom/avast/a/a/a/a/j;->l:I

    .line 4036
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/a/k;Lcom/avast/a/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/a/j;-><init>(Lcom/avast/a/a/a/a/k;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4037
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 4191
    iput-byte v0, p0, Lcom/avast/a/a/a/a/j;->k:B

    .line 4233
    iput v0, p0, Lcom/avast/a/a/a/a/j;->l:I

    .line 4037
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/j;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput p1, p0, Lcom/avast/a/a/a/a/j;->i:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/j;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-wide p1, p0, Lcom/avast/a/a/a/a/j;->c:J

    return-wide p1
.end method

.method public static a()Lcom/avast/a/a/a/a/j;
    .locals 1

    .prologue
    .line 4041
    sget-object v0, Lcom/avast/a/a/a/a/j;->a:Lcom/avast/a/a/a/a/j;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;
    .locals 1
    .parameter

    .prologue
    .line 4362
    invoke-static {}, Lcom/avast/a/a/a/a/j;->p()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/a/k;->a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/j;Lcom/google/a/c;)Lcom/google/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/avast/a/a/a/a/j;->j:Lcom/google/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/j;Lcom/google/a/z;)Lcom/google/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/a/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/j;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput p1, p0, Lcom/avast/a/a/a/a/j;->b:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/j;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-wide p1, p0, Lcom/avast/a/a/a/a/j;->g:J

    return-wide p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/j;Lcom/google/a/z;)Lcom/google/a/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/a/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4030
    iput-object p1, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/a/j;)Lcom/google/a/z;
    .locals 1
    .parameter

    .prologue
    .line 4030
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    return-object v0
.end method

.method public static p()Lcom/avast/a/a/a/a/k;
    .locals 1

    .prologue
    .line 4359
    invoke-static {}, Lcom/avast/a/a/a/a/k;->f()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private s()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    .line 4081
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4082
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4084
    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    .line 4087
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private t()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 4150
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    .line 4151
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4152
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 4154
    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    .line 4157
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4182
    iput-wide v1, p0, Lcom/avast/a/a/a/a/j;->c:J

    .line 4183
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    .line 4184
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    .line 4185
    sget-object v0, Lcom/google/a/y;->a:Lcom/google/a/z;

    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    .line 4186
    iput-wide v1, p0, Lcom/avast/a/a/a/a/j;->g:J

    .line 4187
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    .line 4188
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/a/a/a/a/j;->i:I

    .line 4189
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/a/j;->j:Lcom/google/a/c;

    .line 4190
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4030
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->r()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4030
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->q()Lcom/avast/a/a/a/a/k;

    move-result-object v0

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

    const/4 v1, 0x0

    .line 4206
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->w()I

    .line 4207
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    .line 4208
    iget-wide v2, p0, Lcom/avast/a/a/a/a/j;->c:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/a/e;->b(IJ)V

    .line 4210
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_1

    .line 4211
    invoke-direct {p0}, Lcom/avast/a/a/a/a/j;->s()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    :cond_1
    move v0, v1

    .line 4213
    :goto_0
    iget-object v2, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    invoke-interface {v2}, Lcom/google/a/z;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4214
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    invoke-interface {v3, v0}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4216
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    invoke-interface {v0}, Lcom/google/a/z;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 4217
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    invoke-interface {v0, v1}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4219
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v6, :cond_4

    .line 4220
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/avast/a/a/a/a/j;->g:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/a/e;->b(IJ)V

    .line 4222
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_5

    .line 4223
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/j;->t()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4225
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 4226
    const/4 v0, 0x7

    iget v1, p0, Lcom/avast/a/a/a/a/j;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 4228
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_7

    .line 4229
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->j:Lcom/google/a/c;

    invoke-virtual {p1, v7, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 4231
    :cond_7
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4053
    iget v1, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 4056
    iget-wide v0, p0, Lcom/avast/a/a/a/a/j;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 4063
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    .line 4067
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4068
    check-cast v0, Ljava/lang/String;

    .line 4076
    :goto_0
    return-object v0

    .line 4070
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4072
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 4073
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4074
    iput-object v1, p0, Lcom/avast/a/a/a/a/j;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4076
    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 1

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    return-object v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 4123
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

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

.method public i()J
    .locals 2

    .prologue
    .line 4126
    iget-wide v0, p0, Lcom/avast/a/a/a/a/j;->g:J

    return-wide v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 4133
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

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

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    .line 4137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4138
    check-cast v0, Ljava/lang/String;

    .line 4146
    :goto_0
    return-object v0

    .line 4140
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 4142
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 4143
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4144
    iput-object v1, p0, Lcom/avast/a/a/a/a/j;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 4146
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 4165
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

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

.method public m()I
    .locals 1

    .prologue
    .line 4168
    iget v0, p0, Lcom/avast/a/a/a/a/j;->i:I

    return v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 4175
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

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

.method public o()Lcom/google/a/c;
    .locals 1

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/avast/a/a/a/a/j;->j:Lcom/google/a/c;

    return-object v0
.end method

.method public q()Lcom/avast/a/a/a/a/k;
    .locals 1

    .prologue
    .line 4360
    invoke-static {}, Lcom/avast/a/a/a/a/j;->p()Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/avast/a/a/a/a/k;
    .locals 1

    .prologue
    .line 4364
    invoke-static {p0}, Lcom/avast/a/a/a/a/j;->a(Lcom/avast/a/a/a/a/j;)Lcom/avast/a/a/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4193
    iget-byte v2, p0, Lcom/avast/a/a/a/a/j;->k:B

    .line 4194
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 4201
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 4194
    goto :goto_0

    .line 4196
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4197
    iput-byte v1, p0, Lcom/avast/a/a/a/a/j;->k:B

    move v0, v1

    .line 4198
    goto :goto_0

    .line 4200
    :cond_2
    iput-byte v0, p0, Lcom/avast/a/a/a/a/j;->k:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4235
    iget v0, p0, Lcom/avast/a/a/a/a/j;->l:I

    .line 4236
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 4282
    :goto_0
    return v0

    .line 4239
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_8

    .line 4240
    iget-wide v2, p0, Lcom/avast/a/a/a/a/j;->c:J

    invoke-static {v4, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v0

    add-int/2addr v0, v1

    .line 4243
    :goto_1
    iget v2, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_1

    .line 4244
    invoke-direct {p0}, Lcom/avast/a/a/a/a/j;->s()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v1

    move v3, v1

    .line 4249
    :goto_2
    iget-object v4, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    invoke-interface {v4}, Lcom/google/a/z;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 4250
    iget-object v4, p0, Lcom/avast/a/a/a/a/j;->e:Lcom/google/a/z;

    invoke-interface {v4, v2}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v4

    invoke-static {v4}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4249
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4253
    :cond_2
    add-int/2addr v0, v3

    .line 4254
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    move v0, v1

    .line 4258
    :goto_3
    iget-object v3, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    invoke-interface {v3}, Lcom/google/a/z;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 4259
    iget-object v3, p0, Lcom/avast/a/a/a/a/j;->f:Lcom/google/a/z;

    invoke-interface {v3, v1}, Lcom/google/a/z;->c(I)Lcom/google/a/c;

    move-result-object v3

    invoke-static {v3}, Lcom/google/a/e;->b(Lcom/google/a/c;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4258
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4262
    :cond_3
    add-int/2addr v0, v2

    .line 4263
    invoke-virtual {p0}, Lcom/avast/a/a/a/a/j;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 4265
    iget v1, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 4266
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/avast/a/a/a/a/j;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/a/e;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4269
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_5

    .line 4270
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/a/j;->t()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4273
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_6

    .line 4274
    const/4 v1, 0x7

    iget v2, p0, Lcom/avast/a/a/a/a/j;->i:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4277
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_7

    .line 4278
    iget-object v1, p0, Lcom/avast/a/a/a/a/j;->j:Lcom/google/a/c;

    invoke-static {v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4281
    :cond_7
    iput v0, p0, Lcom/avast/a/a/a/a/j;->l:I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method
