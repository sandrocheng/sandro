.class Lcom/avast/android/mobilesecurity/app/filter/core/a/a;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic a:Z

.field private static final b:[I

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/HashMap;

.field private static final e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    const-class v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->a:Z

    .line 57
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->b:[I

    .line 101
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "*"

    aput-object v3, v0, v2

    const-string v3, "us-ascii"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "iso-8859-1"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "iso-8859-2"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "iso-8859-3"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "iso-8859-4"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "iso-8859-5"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "iso-8859-6"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "iso-8859-7"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "iso-8859-8"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "iso-8859-9"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "shift_JIS"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "utf-8"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "big5"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "iso-10646-ucs-2"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "utf-16"

    aput-object v3, v0, v1

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->c:[Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->d:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->e:Ljava/util/HashMap;

    .line 127
    sget-boolean v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->b:[I

    array-length v0, v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->c:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 24
    goto/16 :goto_0

    .line 128
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 129
    :goto_1
    if-gt v2, v0, :cond_2

    .line 130
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->d:Ljava/util/HashMap;

    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->b:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->c:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->e:Ljava/util/HashMap;

    sget-object v3, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    sget-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->b:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_2
    return-void

    .line 57
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0xeat 0x7t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xf7t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v0, -0x1

    .line 171
    :goto_0
    return v0

    .line 167
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 168
    if-nez v0, :cond_1

    .line 169
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 147
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/a/a;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0

    .line 151
    :cond_0
    return-object v0
.end method
