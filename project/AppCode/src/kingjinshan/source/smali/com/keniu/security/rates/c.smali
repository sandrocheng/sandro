.class public final Lcom/keniu/security/rates/c;
.super Ljava/lang/Object;
.source "RatesConfig.java"


# static fields
.field private static final h:Z = true

.field private static final i:Z = true

.field private static final j:I = 0x1

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:F

.field private static final n:J

.field private static o:Lcom/keniu/security/rates/c;


# instance fields
.field public a:Z

.field public b:Z

.field public c:I

.field public d:Ljava/lang/String;

.field public e:F

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/keniu/security/rates/c;->k:Ljava/lang/String;

    .line 144
    sput-object v0, Lcom/keniu/security/rates/c;->l:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-direct {p0, p1}, Lcom/keniu/security/rates/c;->b(Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/keniu/security/rates/c;
    .locals 2
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/keniu/security/rates/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/rates/c;->o:Lcom/keniu/security/rates/c;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/keniu/security/rates/c;

    invoke-direct {v1}, Lcom/keniu/security/rates/c;-><init>()V

    .line 23
    sput-object v1, Lcom/keniu/security/rates/c;->o:Lcom/keniu/security/rates/c;

    invoke-direct {v1, p0}, Lcom/keniu/security/rates/c;->b(Landroid/content/Context;)V

    .line 26
    :cond_0
    sget-object v1, Lcom/keniu/security/rates/c;->o:Lcom/keniu/security/rates/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 45
    iput v0, p0, Lcom/keniu/security/rates/c;->c:I

    .line 46
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    const v1, 0x7f0b0367

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/rates/c;->a:Z

    .line 113
    const v1, 0x7f0b0368

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/keniu/security/rates/c;->b:Z

    .line 117
    const v1, 0x7f0b0369

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/keniu/security/rates/c;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keniu/security/rates/c;->d:Ljava/lang/String;

    .line 121
    const v1, 0x7f0b036a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/keniu/security/rates/c;->e:F

    .line 125
    const v1, 0x7f0b036b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/keniu/security/rates/c;->c:I

    .line 128
    const v1, 0x7f0b036c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/keniu/security/rates/c;->f:J

    .line 131
    const v1, 0x7f0b036d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/keniu/security/rates/c;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/rates/c;->g:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/keniu/security/rates/c;->e:F

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 50
    return v0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void

    .line 62
    :pswitch_0
    const v1, 0x7f0b0367

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-boolean v2, p0, Lcom/keniu/security/rates/c;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 67
    :pswitch_1
    const v1, 0x7f0b0368

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-boolean v2, p0, Lcom/keniu/security/rates/c;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 71
    :pswitch_2
    const v1, 0x7f0b0369

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/keniu/security/rates/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 76
    :pswitch_3
    const v1, 0x7f0b036a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget v2, p0, Lcom/keniu/security/rates/c;->e:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 82
    :pswitch_4
    const v1, 0x7f0b036b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget v2, p0, Lcom/keniu/security/rates/c;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 87
    :pswitch_5
    const v1, 0x7f0b036c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-wide v2, p0, Lcom/keniu/security/rates/c;->f:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 92
    :pswitch_6
    const v1, 0x7f0b036d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/keniu/security/rates/c;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x7f0b0367
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
