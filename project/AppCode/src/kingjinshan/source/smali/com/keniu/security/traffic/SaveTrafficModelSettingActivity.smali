.class public Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;
.super Lcom/keniu/security/util/BasePreferenceActivity;
.source "SaveTrafficModelSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# static fields
.field public static a:Lcom/keniu/security/traffic/r;

.field public static b:Landroid/os/HandlerThread;

.field public static c:Landroid/os/Handler;

.field public static d:Lcom/keniu/security/traffic/v;


# instance fields
.field private e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

.field private f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

.field private g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

.field private h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

.field private i:Lcom/ijinshan/kpref/Preference;

.field private j:Lcom/keniu/security/traffic/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    .line 27
    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 29
    new-instance v0, Lcom/keniu/security/traffic/v;

    invoke-direct {v0}, Lcom/keniu/security/traffic/v;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/keniu/security/util/BasePreferenceActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 67
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 69
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 70
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 76
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 78
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 83
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 84
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 85
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 86
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 92
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Z)V

    .line 94
    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b03c4

    .line 183
    invoke-virtual {p1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f()V

    .line 188
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iput v3, v0, Lcom/keniu/security/traffic/y;->w:I

    .line 189
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    invoke-virtual {v0, p0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 214
    :cond_0
    :goto_0
    return v3

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e()V

    .line 194
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    const/4 v1, 0x1

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    .line 195
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    invoke-virtual {v0, p0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d()V

    .line 200
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    const/4 v1, 0x2

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    .line 201
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    invoke-virtual {v0, p0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c()V

    .line 206
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    const/4 v1, 0x3

    iput v1, v0, Lcom/keniu/security/traffic/y;->w:I

    .line 207
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    invoke-virtual {v0, p0, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->i:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v1}, Lcom/ijinshan/kpref/Preference;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    const-class v1, Lcom/keniu/security/traffic/SaveTrafficWhiteListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    const v0, 0x7f050012

    invoke-super {p0, p1, v0}, Lcom/keniu/security/util/BasePreferenceActivity;->a(Landroid/os/Bundle;I)V

    .line 34
    const v0, 0x7f0b03b0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    .line 35
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 36
    const v0, 0x7f0b03b1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    .line 37
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 38
    const v0, 0x7f0b03b2

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    .line 39
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->g:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 40
    const v0, 0x7f0b03b3

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    .line 41
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->h:Lcom/ijinshan/kinghelper/common/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/RadioButtonPreference;->a(Lcom/ijinshan/kpref/n;)V

    .line 42
    const v0, 0x7f0b03af

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a(Ljava/lang/CharSequence;)Lcom/ijinshan/kpref/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->i:Lcom/ijinshan/kpref/Preference;

    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->i:Lcom/ijinshan/kpref/Preference;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/n;)V

    .line 45
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    .line 47
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->f()V

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->e()V

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d()V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-direct {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c()V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v4, 0x4fffffff

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 98
    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    .line 100
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v1, v1, Lcom/keniu/security/traffic/y;->w:I

    if-ne v1, v3, :cond_8

    .line 104
    :cond_0
    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcom/keniu/security/traffic/r;

    invoke-direct {v1}, Lcom/keniu/security/traffic/r;-><init>()V

    sput-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    .line 107
    :cond_1
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 109
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 112
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 114
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 128
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->j:Lcom/keniu/security/traffic/y;

    iget v0, v0, Lcom/keniu/security/traffic/y;->w:I

    if-ne v0, v3, :cond_9

    .line 132
    :cond_3
    :try_start_0
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_4

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thread_save_traffic"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 135
    :cond_4
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_1
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 141
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    .line 143
    :cond_5
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;

    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->d:Lcom/keniu/security/traffic/v;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_6
    :goto_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->finish()V

    .line 178
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/keniu/security/util/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 118
    :cond_8
    sget-object v1, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    if-eqz v1, :cond_2

    .line 119
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 121
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    sget-object v2, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 123
    sput-object v7, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->a:Lcom/keniu/security/traffic/r;

    goto :goto_0

    .line 147
    :cond_9
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/q;->a(Landroid/content/Context;)V

    .line 148
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/keniu/security/traffic/e;->c(Landroid/content/Context;Z)[Lcom/keniu/security/traffic/f;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/keniu/security/traffic/q;->b()Ljava/lang/String;

    move-result-object v1

    move v2, v6

    .line 150
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_c

    .line 151
    aget-object v3, v0, v2

    .line 152
    iget v4, v3, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 153
    invoke-static {}, Lcom/keniu/security/traffic/q;->c()Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v4, v3, Lcom/keniu/security/traffic/f;->d:Z

    if-eqz v4, :cond_a

    .line 157
    iget v4, v3, Lcom/keniu/security/traffic/f;->a:I

    invoke-static {v4, v8}, Lcom/keniu/security/traffic/q;->b(IZ)V

    .line 158
    iput-boolean v6, v3, Lcom/keniu/security/traffic/f;->e:Z

    .line 159
    iput-boolean v6, v3, Lcom/keniu/security/traffic/f;->d:Z

    .line 161
    :cond_a
    iget-object v3, v3, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 150
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 163
    :cond_c
    invoke-virtual {p0}, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/keniu/security/traffic/e;->b(Landroid/content/Context;Z)Z

    .line 166
    :try_start_1
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    .line 167
    sget-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->b:Landroid/os/HandlerThread;

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/SaveTrafficModelSettingActivity;->c:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method
