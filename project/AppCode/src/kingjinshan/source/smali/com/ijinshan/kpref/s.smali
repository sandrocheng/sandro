.class final Lcom/ijinshan/kpref/s;
.super Lcom/ijinshan/kpref/d;
.source "PreferenceInflater.java"


# static fields
.field private static final b:Ljava/lang/String; = "PreferenceInflater"

.field private static final c:Ljava/lang/String; = "intent"


# instance fields
.field private d:Lcom/ijinshan/kpref/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ijinshan/kpref/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/d;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p2}, Lcom/ijinshan/kpref/s;->a(Lcom/ijinshan/kpref/t;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/kpref/d;Lcom/ijinshan/kpref/t;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/ijinshan/kpref/d;-><init>(Lcom/ijinshan/kpref/d;Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p2}, Lcom/ijinshan/kpref/s;->a(Lcom/ijinshan/kpref/t;)V

    .line 49
    return-void
.end method

.method private a(Lcom/ijinshan/kpref/PreferenceGroup;Lcom/ijinshan/kpref/PreferenceGroup;)Lcom/ijinshan/kpref/PreferenceGroup;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ijinshan/kpref/s;->d:Lcom/ijinshan/kpref/t;

    invoke-virtual {p2, v0}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Lcom/ijinshan/kpref/t;)V

    move-object v0, p2

    .line 95
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private a(Lcom/ijinshan/kpref/t;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ijinshan/kpref/s;->d:Lcom/ijinshan/kpref/t;

    .line 58
    const-string v0, "android.preference."

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/s;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/Preference;Landroid/util/AttributeSet;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/ijinshan/kpref/s;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2, v0}, Lcom/ijinshan/kpref/Preference;->a(Landroid/content/Intent;)V

    .line 80
    :cond_0
    const/4 v0, 0x1

    .line 83
    :goto_1
    return v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string v2, "PreferenceInflater"

    const-string v3, "Could not parse Intent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "PreferenceInflater"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/ijinshan/kpref/d;
    .locals 2
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/ijinshan/kpref/s;

    iget-object v1, p0, Lcom/ijinshan/kpref/s;->d:Lcom/ijinshan/kpref/t;

    invoke-direct {v0, p0, v1, p1}, Lcom/ijinshan/kpref/s;-><init>(Lcom/ijinshan/kpref/d;Lcom/ijinshan/kpref/t;Landroid/content/Context;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/ijinshan/kpref/g;Lcom/ijinshan/kpref/g;)Lcom/ijinshan/kpref/g;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p1, Lcom/ijinshan/kpref/PreferenceGroup;

    check-cast p2, Lcom/ijinshan/kpref/PreferenceGroup;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kpref/s;->d:Lcom/ijinshan/kpref/t;

    invoke-virtual {p2, v0}, Lcom/ijinshan/kpref/PreferenceGroup;->a(Lcom/ijinshan/kpref/t;)V

    move-object v0, p2

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected final bridge synthetic a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    check-cast p2, Lcom/ijinshan/kpref/Preference;

    invoke-direct {p0, p1, p2, p3}, Lcom/ijinshan/kpref/s;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/ijinshan/kpref/Preference;Landroid/util/AttributeSet;)Z

    move-result v0

    return v0
.end method
