.class public final Lcom/avast/android/mobilesecurity/engine/internal/a/q;
.super Lcom/google/a/l;
.source "VpsInfoProto.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/internal/a/s;


# static fields
.field private static final a:Lcom/avast/android/mobilesecurity/engine/internal/a/q;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:B

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;-><init>(Z)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    .line 566
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->n()V

    .line 567
    return-void
.end method

.method private constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/r;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 175
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    .line 210
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/android/mobilesecurity/engine/internal/a/r;Lcom/avast/android/mobilesecurity/engine/internal/a/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;-><init>(Lcom/avast/android/mobilesecurity/engine/internal/a/r;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 175
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    .line 210
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g:I

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    return p1
.end method

.method public static a()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    return-object v0
.end method

.method public static a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1
    .parameter

    .prologue
    .line 309
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/engine/internal/a/q;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static h()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/r;->l()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    .line 96
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private l()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    .line 128
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    .line 134
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private m()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    .line 166
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    .line 172
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    .line 174
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->j()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->i()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->w()I

    .line 199
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->k()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 202
    :cond_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->l()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 205
    :cond_1
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 206
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->m()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 208
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    .line 82
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 91
    :goto_0
    return-object v0

    .line 85
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 87
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

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
    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    .line 114
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    check-cast v0, Ljava/lang/String;

    .line 123
    :goto_0
    return-object v0

    .line 117
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 119
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 123
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    .line 146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Ljava/lang/String;

    .line 155
    :goto_0
    return-object v0

    .line 149
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 151
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 155
    goto :goto_0
.end method

.method public i()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->h()Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/avast/android/mobilesecurity/engine/internal/a/r;
    .locals 1

    .prologue
    .line 311
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->a(Lcom/avast/android/mobilesecurity/engine/internal/a/q;)Lcom/avast/android/mobilesecurity/engine/internal/a/r;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    iget-byte v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    .line 178
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 193
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 185
    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f()Z

    move-result v2

    if-nez v2, :cond_4

    .line 189
    iput-byte v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    goto :goto_1

    .line 192
    :cond_4
    iput-byte v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f:B

    move v1, v0

    .line 193
    goto :goto_1
.end method

.method public w()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 212
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g:I

    .line 213
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 229
    :goto_0
    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    .line 216
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->k()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_1
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->l()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_2
    iget v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 225
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->m()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_3
    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g:I

    goto :goto_0
.end method
