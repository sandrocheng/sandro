.class public final Lcom/keniu/security/a/o;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXPraserHelper.java"


# instance fields
.field final a:I

.field b:Ljava/util/List;

.field c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Ljava/util/LinkedList;

.field f:Lcom/keniu/security/a/e;

.field g:Lcom/keniu/security/a/m;

.field h:Lcom/keniu/security/a/p;

.field i:I

.field j:J

.field k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 16
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/keniu/security/a/o;->a:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/a/o;->i:I

    .line 28
    iput-wide v1, p0, Lcom/keniu/security/a/o;->j:J

    .line 29
    iput-wide v1, p0, Lcom/keniu/security/a/o;->k:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/a/o;->b:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/a/o;->e:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final characters([CII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/keniu/security/a/o;->i:I

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/a/o;->i:I

    .line 44
    :cond_0
    return-void
.end method

.method public final endDocument()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/a/o;->k:J

    .line 52
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/keniu/security/a/o;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    const-string v0, "scan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    iget-object v1, p0, Lcom/keniu/security/a/o;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keniu/security/a/e;->a(Ljava/util/List;)V

    .line 65
    :cond_1
    const-string v0, "method"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/keniu/security/a/o;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/a/o;->g:Lcom/keniu/security/a/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    iget-object v1, p0, Lcom/keniu/security/a/o;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keniu/security/a/e;->b(Ljava/util/List;)V

    .line 70
    :cond_2
    const-string v0, "sign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/keniu/security/a/o;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/keniu/security/a/o;->h:Lcom/keniu/security/a/p;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    return-void
.end method

.method public final startDocument()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->b:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->e:Ljava/util/LinkedList;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/a/o;->j:J

    .line 81
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 86
    const-string v0, "item"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    new-instance v0, Lcom/keniu/security/a/e;

    invoke-direct {v0}, Lcom/keniu/security/a/e;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    move v0, v2

    .line 88
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 89
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a/e;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/keniu/security/a/o;->f:Lcom/keniu/security/a/e;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_2
    iput v3, p0, Lcom/keniu/security/a/o;->i:I

    .line 136
    :goto_2
    return-void

    .line 98
    :cond_3
    const-string v0, "scan"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->c:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->d:Ljava/util/List;

    .line 102
    iput v3, p0, Lcom/keniu/security/a/o;->i:I

    goto :goto_2

    .line 105
    :cond_4
    const-string v0, "method"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    new-instance v0, Lcom/keniu/security/a/m;

    invoke-direct {v0}, Lcom/keniu/security/a/m;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->g:Lcom/keniu/security/a/m;

    .line 108
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/keniu/security/a/o;->g:Lcom/keniu/security/a/m;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/a/m;->a(Ljava/lang/String;)V

    .line 111
    :cond_5
    iput v3, p0, Lcom/keniu/security/a/o;->i:I

    goto :goto_2

    .line 114
    :cond_6
    const-string v0, "sign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 116
    new-instance v0, Lcom/keniu/security/a/p;

    invoke-direct {v0}, Lcom/keniu/security/a/p;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/a/o;->h:Lcom/keniu/security/a/p;

    move v0, v2

    .line 117
    :goto_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 118
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    iget-object v1, p0, Lcom/keniu/security/a/o;->h:Lcom/keniu/security/a/p;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a/p;->a(I)V

    .line 117
    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 120
    :cond_8
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 121
    iget-object v1, p0, Lcom/keniu/security/a/o;->h:Lcom/keniu/security/a/p;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a/p;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 122
    :cond_9
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "str"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    iget-object v1, p0, Lcom/keniu/security/a/o;->h:Lcom/keniu/security/a/p;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/a/p;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 126
    :cond_a
    iput v3, p0, Lcom/keniu/security/a/o;->i:I

    goto/16 :goto_2

    .line 129
    :cond_b
    const-string v0, "whiteitem"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    iget-object v0, p0, Lcom/keniu/security/a/o;->e:Ljava/util/LinkedList;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    iput v3, p0, Lcom/keniu/security/a/o;->i:I

    goto/16 :goto_2

    .line 135
    :cond_c
    iput v2, p0, Lcom/keniu/security/a/o;->i:I

    goto/16 :goto_2
.end method
