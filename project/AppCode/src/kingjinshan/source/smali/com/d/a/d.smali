.class public final Lcom/d/a/d;
.super Ljava/lang/Object;
.source "GDiffWriter.java"

# interfaces
.implements Lcom/d/a/b;


# static fields
.field public static final a:I = 0x7fff

.field public static final b:B = 0x0t

.field public static final c:I = 0xf6

.field public static final d:I = 0xf7

.field public static final e:I = 0xf8

.field public static final f:I = 0xf9

.field public static final g:I = 0xfa

.field public static final h:I = 0xfb

.field public static final i:I = 0xfc

.field public static final j:I = 0xfd

.field public static final k:I = 0xfe

.field public static final l:I = 0xff


# instance fields
.field private m:Ljava/io/ByteArrayOutputStream;

.field private n:Z

.field private o:Ljava/io/DataOutputStream;


# direct methods
.method private constructor <init>(Ljava/io/DataOutputStream;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0xd1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/d;->n:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    .line 70
    iput-object p1, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    .line 72
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 73
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 74
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 75
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 76
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/d/a/d;-><init>(Ljava/io/DataOutputStream;)V

    .line 84
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0xf6

    if-gt v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 153
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 155
    :cond_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xf7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 147
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xf8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 150
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/d/a/d;->b()V

    .line 164
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 165
    return-void
.end method

.method public final a(B)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    iget-object v0, p0, Lcom/d/a/d;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-lt v0, v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/d/a/d;->b()V

    .line 139
    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0xffff

    const/16 v3, 0x100

    .line 88
    invoke-direct {p0}, Lcom/d/a/d;->b()V

    .line 91
    iget-boolean v0, p0, Lcom/d/a/d;->n:Z

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COPY off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 98
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 99
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    :goto_0
    return-void

    .line 100
    :cond_1
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    .line 101
    if-ge p3, v3, :cond_2

    .line 102
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 103
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 104
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 105
    :cond_2
    if-le p3, v4, :cond_3

    .line 106
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xfb

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 107
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 108
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 111
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 112
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 115
    :cond_4
    if-ge p3, v3, :cond_5

    .line 116
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 117
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 119
    :cond_5
    if-le p3, v4, :cond_6

    .line 120
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/16 v1, 0xfd

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 125
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto/16 :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/d/a/d;->b()V

    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 173
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 174
    iget-object v0, p0, Lcom/d/a/d;->o:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 175
    return-void
.end method
