.class public Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a:I

    .line 57
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    .line 58
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter

    .prologue
    .line 68
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;-><init>(I[B)V

    .line 69
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    .line 123
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-void
.end method

.method public a()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 107
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a:I

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 144
    :goto_0
    return-object v0

    .line 138
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a:I

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    const-string v2, "iso-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    array-length v0, v0

    .line 188
    new-array v1, v0, [B

    .line 189
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->b:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :try_start_0
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;->a:I

    invoke-direct {v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/a/b;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "EncodedStringValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to clone an EncodedStringValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
