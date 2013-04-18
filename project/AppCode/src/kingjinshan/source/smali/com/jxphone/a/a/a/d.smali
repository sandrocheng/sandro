.class public final Lcom/jxphone/a/a/a/d;
.super Ljava/lang/Object;
.source "XPPReader.java"

# interfaces
.implements Lcom/jxphone/a/a/a/c;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jxphone/a/a/a/d;->a:Ljava/io/InputStream;

    .line 20
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 22
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    iget-object v0, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jxphone/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 29
    const-class v0, Lcom/jxphone/a/a/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/jxphone/a/a/a/b;

    invoke-interface {v0}, Lcom/jxphone/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t found TagName(Annotation) in "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 46
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v1, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/jxphone/a/a/a/d;->b:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :pswitch_1
    return-object v2

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jxphone/a/a/a/d;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-void
.end method
