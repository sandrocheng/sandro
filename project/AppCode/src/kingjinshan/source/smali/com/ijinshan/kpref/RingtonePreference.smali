.class public Lcom/ijinshan/kpref/RingtonePreference;
.super Lcom/ijinshan/kpref/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Lcom/ijinshan/kpref/v;


# static fields
.field private static final o:Ljava/lang/String; = "RingtonePreference"


# instance fields
.field private p:I

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/kpref/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    const v0, 0x1010093

    invoke-direct {p0, p1, p2, v0}, Lcom/ijinshan/kpref/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object v0, Lcom/android/internal/R$styleable;->RingtonePreference:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    .line 61
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->r:Z

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput p1, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    .line 94
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/RingtonePreference;->f(Ljava/lang/String;)Z

    .line 175
    return-void

    .line 174
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    .line 114
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    return v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 152
    const-string v0, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0, v3}, Lcom/ijinshan/kpref/RingtonePreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    iget-boolean v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    iget v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    const-string v0, "android.intent.extra.ringtone.TYPE"

    iget v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    return-void

    :cond_1
    move-object v1, v3

    .line 152
    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    return v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->r:Z

    return v0
.end method

.method private g()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0, v2}, Lcom/ijinshan/kpref/RingtonePreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/ijinshan/kpref/RingtonePreference;->r:Z

    .line 133
    return-void
.end method


# virtual methods
.method protected final K_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0, v4}, Lcom/ijinshan/kpref/RingtonePreference;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v2, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/ijinshan/kpref/RingtonePreference;->q:Z

    if-eqz v1, :cond_0

    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    iget v2, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v2, p0, Lcom/ijinshan/kpref/RingtonePreference;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/ijinshan/kpref/RingtonePreference;->p:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0}, Lcom/ijinshan/kpref/RingtonePreference;->I()Lcom/ijinshan/kpref/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/kpref/t;->f()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/ijinshan/kpref/RingtonePreference;->s:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void

    :cond_1
    move-object v2, v4

    .line 139
    goto :goto_0
.end method

.method protected final a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/ijinshan/kpref/t;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/ijinshan/kpref/Preference;->a(Lcom/ijinshan/kpref/t;)V

    .line 221
    invoke-virtual {p1, p0}, Lcom/ijinshan/kpref/t;->a(Lcom/ijinshan/kpref/v;)V

    .line 222
    invoke-virtual {p1}, Lcom/ijinshan/kpref/t;->i()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->s:I

    .line 223
    return-void
.end method

.method protected final a(ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 198
    check-cast p2, Ljava/lang/String;

    .line 207
    if-eqz p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/RingtonePreference;->a(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public final a(ILandroid/content/Intent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    iget v0, p0, Lcom/ijinshan/kpref/RingtonePreference;->s:I

    if-ne p1, v0, :cond_2

    .line 229
    if-eqz p2, :cond_0

    .line 230
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 232
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/ijinshan/kpref/RingtonePreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-direct {p0, v0}, Lcom/ijinshan/kpref/RingtonePreference;->a(Landroid/net/Uri;)V

    .line 237
    :cond_0
    const/4 v0, 0x1

    .line 240
    :goto_1
    return v0

    .line 232
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
