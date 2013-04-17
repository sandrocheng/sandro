.class public final Lexceptionupload/ContactInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ContactInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic g:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lexceptionupload/ContactInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lexceptionupload/ContactInfo;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    sget-boolean v1, Lexceptionupload/ContactInfo;->g:Z

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
    .line 188
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 189
    iget-object v1, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 190
    iget-object v1, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 191
    iget-object v1, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 192
    iget-object v1, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 193
    iget-object v1, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 194
    iget-object v1, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 195
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    check-cast p1, Lexceptionupload/ContactInfo;

    .line 122
    iget-object v1, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    iget-object v2, p1, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 172
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 174
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 176
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 178
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 180
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 182
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 162
    iget-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 167
    :cond_0
    return-void
.end method
