.class final Lcn/com/wali/zft/MemShareBuffer;
.super Ljava/lang/Object;
.source "MemShareBuffer.java"


# instance fields
.field private fc:Ljava/nio/channels/FileChannel;

.field private filename:Ljava/lang/String;

.field private is_read:Z

.field private is_write:Z

.field private map:Ljava/nio/MappedByteBuffer;

.field private pos:J

.field private raf:Ljava/io/RandomAccessFile;

.field private size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcn/com/wali/zft/MemShareBuffer;->init(Ljava/lang/String;JJZZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/com/wali/zft/MemShareBuffer;->init(Ljava/lang/String;JJZZ)V

    .line 34
    return-void
.end method

.method private init(Ljava/lang/String;JJZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p6, p0, Lcn/com/wali/zft/MemShareBuffer;->is_read:Z

    .line 57
    iput-boolean p7, p0, Lcn/com/wali/zft/MemShareBuffer;->is_write:Z

    .line 58
    iput-wide p2, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    .line 59
    iput-wide p4, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    .line 60
    iput-object p1, p0, Lcn/com/wali/zft/MemShareBuffer;->filename:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p7, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 66
    :cond_0
    return-void
.end method

.method private load_fc()V
    .locals 6

    .prologue
    .line 73
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcn/com/wali/zft/MemShareBuffer;->filename:Ljava/lang/String;

    iget-boolean v2, p0, Lcn/com/wali/zft/MemShareBuffer;->is_read:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/com/wali/zft/MemShareBuffer;->is_write:Z

    if-eqz v2, :cond_0

    const-string v2, "rw"

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->raf:Ljava/io/RandomAccessFile;

    .line 74
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->fc:Ljava/nio/channels/FileChannel;

    .line 75
    iget-boolean v0, p0, Lcn/com/wali/zft/MemShareBuffer;->is_read:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcn/com/wali/zft/MemShareBuffer;->is_write:Z

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->fc:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v2, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    iget-wide v4, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    .line 81
    :goto_1
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 86
    :goto_2
    return-void

    .line 73
    :cond_0
    iget-boolean v2, p0, Lcn/com/wali/zft/MemShareBuffer;->is_read:Z

    if-eqz v2, :cond_1

    const-string v2, "r"

    goto :goto_0

    :cond_1
    const-string v2, "w"

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->fc:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v2, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    iget-wide v4, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->fc:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 101
    :cond_1
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_2
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final getMap()Ljava/nio/MappedByteBuffer;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcn/com/wali/zft/MemShareBuffer;->load_fc()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method

.method public final getMap(JJ)Ljava/nio/MappedByteBuffer;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_1

    .line 118
    iput-wide p1, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    .line 119
    iput-wide p3, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    .line 120
    invoke-direct {p0}, Lcn/com/wali/zft/MemShareBuffer;->load_fc()V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/wali/zft/MemShareBuffer;->map:Ljava/nio/MappedByteBuffer;

    return-object v0

    .line 123
    :cond_1
    iget-wide v0, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    iget-wide v1, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    cmp-long v1, v1, p3

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcn/com/wali/zft/MemShareBuffer;->close()V

    .line 126
    iput-wide p1, p0, Lcn/com/wali/zft/MemShareBuffer;->pos:J

    .line 127
    iput-wide p3, p0, Lcn/com/wali/zft/MemShareBuffer;->size:J

    .line 128
    invoke-direct {p0}, Lcn/com/wali/zft/MemShareBuffer;->load_fc()V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 123
    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method
