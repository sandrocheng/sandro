.class public Lcom/avast/android/mobilesecurity/app/fileshield/a;
.super Ljava/lang/Object;
.source "AccessedFile.java"


# static fields
.field private static final a:Ljava/util/Comparator;


# instance fields
.field private final b:J

.field private final c:Ljava/io/File;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/b;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/b;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->a:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c:Ljava/io/File;

    .line 94
    iput-wide p2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->b:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->d:J

    .line 96
    return-void
.end method

.method public static d()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->a:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->b:J

    return-wide v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c:Ljava/io/File;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->d:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    instance-of v0, p1, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->b()Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :cond_1
    check-cast p1, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/a;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 140
    goto :goto_0
.end method
