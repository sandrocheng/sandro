.class public final Lcom/hoi/widget/r;
.super Lcom/keniu/security/util/CustomDialogPreference;
.source "NumTypePreference.java"


# instance fields
.field private o:Lcom/hoi/widget/NumberPicker;

.field private p:Lcom/hoi/widget/NumberPicker;

.field private q:Landroid/view/LayoutInflater;

.field private r:[Ljava/lang/String;

.field private s:[J

.field private t:[I

.field private u:J

.field private v:Lcom/hoi/widget/t;

.field private w:J

.field private x:Lcom/hoi/widget/s;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 37
    invoke-direct {p0, p1, v5}, Lcom/keniu/security/util/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MB"

    aput-object v2, v0, v1

    const-string v1, "GB"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/hoi/widget/r;->r:[Ljava/lang/String;

    .line 24
    new-array v0, v4, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/hoi/widget/r;->s:[J

    .line 25
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/hoi/widget/r;->t:[I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hoi/widget/r;->u:J

    .line 27
    sget-object v0, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    iput-object v0, p0, Lcom/hoi/widget/r;->v:Lcom/hoi/widget/t;

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hoi/widget/r;->w:J

    .line 179
    iput-object v5, p0, Lcom/hoi/widget/r;->x:Lcom/hoi/widget/s;

    .line 39
    const v0, 0x7f0300d3

    invoke-virtual {p0, v0}, Lcom/hoi/widget/r;->b(I)V

    .line 40
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/hoi/widget/r;->c(I)V

    .line 41
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/hoi/widget/r;->q:Landroid/view/LayoutInflater;

    .line 43
    return-void

    .line 24
    nop

    :array_0
    .array-data 0x8
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 25
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;J)Lcom/hoi/widget/r;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 58
    new-instance v0, Lcom/hoi/widget/r;

    invoke-direct {v0, p0}, Lcom/hoi/widget/r;-><init>(Landroid/content/Context;)V

    .line 59
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "GB"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/hoi/widget/r;->r:[Ljava/lang/String;

    .line 60
    new-array v1, v4, [J

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/hoi/widget/r;->s:[J

    .line 61
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    iput-object v1, v0, Lcom/hoi/widget/r;->t:[I

    .line 62
    iput-wide p1, v0, Lcom/hoi/widget/r;->u:J

    .line 63
    sget-object v1, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    iput-object v1, v0, Lcom/hoi/widget/r;->v:Lcom/hoi/widget/t;

    .line 64
    iput-wide p1, v0, Lcom/hoi/widget/r;->w:J

    .line 65
    return-object v0

    .line 60
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x27t 0x0t 0x0t
    .end array-data
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/hoi/widget/r;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 47
    new-instance v0, Lcom/hoi/widget/r;

    invoke-direct {v0, p0}, Lcom/hoi/widget/r;-><init>(Landroid/content/Context;)V

    .line 48
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v4

    iput-object v1, v0, Lcom/hoi/widget/r;->r:[Ljava/lang/String;

    .line 49
    new-array v1, v2, [J

    const-wide/16 v2, 0x1

    aput-wide v2, v1, v4

    iput-object v1, v0, Lcom/hoi/widget/r;->s:[J

    .line 50
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/hoi/widget/r;->t:[I

    .line 51
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/hoi/widget/r;->u:J

    .line 52
    sget-object v1, Lcom/hoi/widget/t;->a:Lcom/hoi/widget/t;

    iput-object v1, v0, Lcom/hoi/widget/r;->v:Lcom/hoi/widget/t;

    .line 53
    int-to-long v1, p2

    iput-wide v1, v0, Lcom/hoi/widget/r;->w:J

    .line 54
    return-object v0

    .line 50
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(III[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/hoi/widget/NumberPicker;->a(II)V

    .line 222
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, v1, p3, p4}, Lcom/hoi/widget/NumberPicker;->a(II[Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->a()V

    .line 224
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    if-lez p3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/hoi/widget/NumberPicker;->a(Z)V

    .line 225
    return-void
.end method

.method private static a(Landroid/content/DialogInterface;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mShowing"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 233
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/hoi/widget/s;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/hoi/widget/r;->x:Lcom/hoi/widget/s;

    .line 184
    return-void
.end method


# virtual methods
.method protected final J_()Landroid/view/View;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 118
    invoke-super {p0}, Lcom/keniu/security/util/CustomDialogPreference;->J_()Landroid/view/View;

    move-result-object v1

    .line 120
    const v0, 0x7f08030f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    .line 122
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    sget-object v2, Lcom/hoi/widget/NumberPicker;->b:Lcom/hoi/widget/x;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 123
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 125
    const v0, 0x7f080310

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hoi/widget/NumberPicker;

    iput-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    .line 127
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    sget-object v2, Lcom/hoi/widget/NumberPicker;->b:Lcom/hoi/widget/x;

    invoke-virtual {v0, v2}, Lcom/hoi/widget/NumberPicker;->a(Lcom/hoi/widget/x;)V

    .line 128
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/hoi/widget/NumberPicker;->a(J)V

    .line 130
    invoke-virtual {p0}, Lcom/hoi/widget/r;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, v8}, Lcom/hoi/widget/r;->c(Z)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/r;->t:[I

    aget v0, v0, v8

    iget-object v2, p0, Lcom/hoi/widget/r;->t:[I

    aget v2, v2, v9

    iget-object v3, p0, Lcom/hoi/widget/r;->r:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v9

    iget-object v4, p0, Lcom/hoi/widget/r;->r:[Ljava/lang/String;

    iget-object v5, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v5, v0, v2}, Lcom/hoi/widget/NumberPicker;->a(II)V

    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, v8, v3, v4}, Lcom/hoi/widget/NumberPicker;->a(II[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->a()V

    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    if-lez v3, :cond_2

    move v2, v9

    :goto_0
    invoke-virtual {v0, v2}, Lcom/hoi/widget/NumberPicker;->a(Z)V

    .line 137
    iget-wide v2, p0, Lcom/hoi/widget/r;->w:J

    iget-object v0, p0, Lcom/hoi/widget/r;->t:[I

    aget v0, v0, v8

    int-to-long v4, v0

    iget-object v0, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v0, v8

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-wide v2, p0, Lcom/hoi/widget/r;->w:J

    iget-object v0, p0, Lcom/hoi/widget/r;->t:[I

    aget v0, v0, v9

    int-to-long v4, v0

    iget-object v0, p0, Lcom/hoi/widget/r;->s:[J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    array-length v6, v6

    sub-int/2addr v6, v9

    aget-wide v6, v0, v6

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 140
    iget-wide v2, p0, Lcom/hoi/widget/r;->w:J

    cmp-long v0, v2, v10

    if-nez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 142
    iget-object v0, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0, v8}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 166
    :cond_1
    return-object v1

    :cond_2
    move v2, v8

    .line 133
    goto :goto_0

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/hoi/widget/r;->s:[J

    array-length v0, v0

    sub-int/2addr v0, v9

    move v2, v9

    move v3, v9

    :goto_1
    if-ltz v0, :cond_1

    .line 149
    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    if-eqz v3, :cond_4

    .line 151
    iget-object v3, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 153
    iget-object v3, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v3, v0}, Lcom/hoi/widget/NumberPicker;->a(I)V

    move v3, v8

    .line 155
    :cond_4
    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    rem-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    iget-object v6, p0, Lcom/hoi/widget/r;->t:[I

    aget v6, v6, v9

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    .line 159
    iget-object v2, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    iget-wide v4, p0, Lcom/hoi/widget/r;->w:J

    iget-object v6, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v6, v6, v0

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lcom/hoi/widget/NumberPicker;->a(I)V

    .line 161
    iget-object v2, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v2, v0}, Lcom/hoi/widget/NumberPicker;->a(I)V

    move v2, v8

    .line 148
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected final a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hoi/widget/r;->q:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/hoi/widget/r;->A()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    iget-object v2, p0, Lcom/hoi/widget/r;->v:Lcom/hoi/widget/t;

    sget-object v3, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    if-ne v2, v3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/hoi/widget/r;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-wide v3, p0, Lcom/hoi/widget/r;->u:J

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/r;->b(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/hoi/widget/r;->E()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-wide v3, p0, Lcom/hoi/widget/r;->u:J

    long-to-int v3, v3

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hoi/widget/r;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 172
    return-object p1
.end method

.method protected final a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/keniu/security/util/CustomDialogPreference;->a(Z)V

    .line 191
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->d()I

    move-result v0

    int-to-long v0, v0

    .line 194
    iget-object v2, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/NumberPicker;->d()I

    move-result v2

    .line 195
    iget-object v3, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v2, v3, v2

    mul-long/2addr v0, v2

    .line 197
    iput-wide v0, p0, Lcom/hoi/widget/r;->w:J

    .line 199
    iget-object v2, p0, Lcom/hoi/widget/r;->v:Lcom/hoi/widget/t;

    sget-object v3, Lcom/hoi/widget/t;->b:Lcom/hoi/widget/t;

    if-ne v2, v3, :cond_2

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hoi/widget/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/hoi/widget/r;->F()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/hoi/widget/r;->A()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 215
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hoi/widget/r;->x:Lcom/hoi/widget/s;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/hoi/widget/r;->x:Lcom/hoi/widget/s;

    .line 217
    :cond_1
    return-void

    .line 206
    :cond_2
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/hoi/widget/r;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/hoi/widget/r;->F()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 208
    invoke-virtual {p0}, Lcom/hoi/widget/r;->A()Ljava/lang/String;

    move-result-object v3

    long-to-int v0, v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 89
    invoke-super {p0, p1, p2}, Lcom/keniu/security/util/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 91
    invoke-virtual {p0}, Lcom/hoi/widget/r;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hoi/widget/r;->D()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b03d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/hoi/widget/r;->o:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/hoi/widget/NumberPicker;->d()I

    move-result v0

    int-to-long v0, v0

    .line 96
    iget-object v2, p0, Lcom/hoi/widget/r;->p:Lcom/hoi/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/hoi/widget/NumberPicker;->d()I

    move-result v2

    .line 97
    iget-object v3, p0, Lcom/hoi/widget/r;->s:[J

    aget-wide v2, v3, v2

    mul-long/2addr v0, v2

    .line 98
    invoke-virtual {p0}, Lcom/hoi/widget/r;->D()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 100
    iget-wide v2, v2, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/hoi/widget/r;->D()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02f9

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hoi/widget/r;->a(Landroid/content/DialogInterface;Z)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-static {p1, v4}, Lcom/hoi/widget/r;->a(Landroid/content/DialogInterface;Z)V

    .line 110
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
