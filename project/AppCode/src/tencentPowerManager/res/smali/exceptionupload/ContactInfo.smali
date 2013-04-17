.class public final Lexceptionupload/ContactInfo;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


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
    .line 88
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :cond_0
    return-object v0

    .line 129
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
    .line 166
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 167
    iget-object v1, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 168
    iget-object v1, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    const-string v2, "tel"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 169
    iget-object v1, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    const-string v2, "qua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 170
    iget-object v1, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 171
    iget-object v1, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 172
    iget-object v1, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 173
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 110
    check-cast p1, Lexceptionupload/ContactInfo;

    .line 112
    iget-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    iget-object v1, p1, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 111
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    .line 154
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    .line 156
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    .line 158
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    .line 160
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lexceptionupload/ContactInfo;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lexceptionupload/ContactInfo;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 138
    iget-object v0, p0, Lexceptionupload/ContactInfo;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 139
    iget-object v0, p0, Lexceptionupload/ContactInfo;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 140
    iget-object v0, p0, Lexceptionupload/ContactInfo;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 141
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lexceptionupload/ContactInfo;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 145
    :cond_0
    return-void
.end method
