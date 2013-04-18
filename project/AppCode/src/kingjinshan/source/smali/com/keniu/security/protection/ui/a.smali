.class public final Lcom/keniu/security/protection/ui/a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GoogleReverseGeocodeXmlHandler.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->c:Z

    .line 13
    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->b:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/keniu/security/protection/ui/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 21
    iget-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->b:Z

    if-nez v0, :cond_0

    aget-char v0, p1, p2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    aget-char v0, p1, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/keniu/security/protection/ui/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 23
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->b:Z

    if-nez v0, :cond_1

    .line 32
    const-string v0, "address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/keniu/security/protection/ui/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "\u90ae\u653f\u7f16\u7801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/keniu/security/protection/ui/a;->d:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->b:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/ui/a;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/keniu/security/protection/ui/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    :cond_1
    return-void
.end method

.method public final startDocument()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/keniu/security/protection/ui/a;->a:Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 62
    const-string v0, "address"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/protection/ui/a;->c:Z

    .line 64
    :cond_0
    return-void
.end method
