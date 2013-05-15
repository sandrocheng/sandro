.class public Lcom/avast/android/mobilesecurity/engine/internal/j;
.super Lorg/apache/http/entity/FileEntity;
.source "ProgressFileEntity.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/engine/r;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/engine/internal/j;->a:Lcom/avast/android/mobilesecurity/engine/r;

    .line 40
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    const-wide/16 v0, -0x1

    .line 54
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/j;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/j;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 57
    :cond_0
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/l;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/j;->a:Lcom/avast/android/mobilesecurity/engine/r;

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/avast/android/mobilesecurity/engine/internal/l;-><init>(Ljava/io/OutputStream;JLcom/avast/android/mobilesecurity/engine/r;)V

    invoke-super {p0, v2}, Lorg/apache/http/entity/FileEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 59
    return-void
.end method
