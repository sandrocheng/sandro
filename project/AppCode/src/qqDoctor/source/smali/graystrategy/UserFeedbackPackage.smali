.class public final Lgraystrategy/UserFeedbackPackage;
.super Lcom/qq/taf/jce/JceStruct;
.source "UserFeedbackPackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_attachmentList:Ljava/util/ArrayList;


# instance fields
.field public attachmentList:Ljava/util/ArrayList;

.field public content:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lgraystrategy/UserFeedbackPackage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lgraystrategy/UserFeedbackPackage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/UserFeedbackPackage;->setTitle(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lgraystrategy/UserFeedbackPackage;->setContent(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lgraystrategy/UserFeedbackPackage;->setAttachmentList(Ljava/util/ArrayList;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p0, p1}, Lgraystrategy/UserFeedbackPackage;->setTitle(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lgraystrategy/UserFeedbackPackage;->setContent(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p3}, Lgraystrategy/UserFeedbackPackage;->setAttachmentList(Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "graystrategy.UserFeedbackPackage"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 102
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :cond_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    sget-boolean v1, Lgraystrategy/UserFeedbackPackage;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 139
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 140
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 141
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    const-string v2, "attachmentList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 142
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lgraystrategy/UserFeedbackPackage;

    .line 80
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    iget-object v2, p1, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    iget-object v2, p1, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "graystrategy.UserFeedbackPackage"

    return-object v0
.end method

.method public final getAttachmentList()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 89
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    .line 124
    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    .line 126
    sget-object v0, Lgraystrategy/UserFeedbackPackage;->cache_attachmentList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lgraystrategy/UserFeedbackPackage;->cache_attachmentList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Lgraystrategy/Attachment;

    invoke-direct {v0}, Lgraystrategy/Attachment;-><init>()V

    .line 130
    sget-object v1, Lgraystrategy/UserFeedbackPackage;->cache_attachmentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    sget-object v0, Lgraystrategy/UserFeedbackPackage;->cache_attachmentList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lgraystrategy/UserFeedbackPackage;->setAttachmentList(Ljava/util/ArrayList;)V

    .line 134
    return-void
.end method

.method public final setAttachmentList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->title:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->content:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lgraystrategy/UserFeedbackPackage;->attachmentList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 116
    return-void
.end method
