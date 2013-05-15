.class public Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;
.super Ljava/lang/Object;
.source "ObjectStorage.java"


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearStorage(I)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const-class v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v1

    if-ltz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 45
    :cond_1
    :try_start_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 46
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    :cond_2
    if-ltz p0, :cond_3

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_4

    .line 51
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 54
    :cond_4
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 55
    if-eqz v0, :cond_5

    .line 56
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_5
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized getByteArray(ILjava/lang/String;)[B
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    const-class v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v2

    if-gez p0, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 86
    :cond_0
    if-nez p1, :cond_1

    .line 87
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt p0, v0, :cond_2

    move-object v0, v1

    .line 99
    :goto_0
    monitor-exit v2

    return-object v0

    .line 94
    :cond_2
    :try_start_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 99
    goto :goto_0
.end method

.method public static declared-synchronized getObject(ILjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    const-class v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v2

    if-gez p0, :cond_0

    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    .line 129
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lt p0, v0, :cond_2

    move-object v0, v1

    .line 141
    :goto_0
    monitor-exit v2

    return-object v0

    .line 136
    :cond_2
    :try_start_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 137
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method public static declared-synchronized initializeStorage(I)V
    .locals 4
    .parameter

    .prologue
    .line 15
    const-class v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v1

    if-gez p0, :cond_0

    .line 16
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 18
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectStorage: initiating for contextId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p0, :cond_1

    .line 21
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-gt v0, p0, :cond_1

    .line 22
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 26
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p0, :cond_3

    .line 30
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-gt v0, p0, :cond_3

    .line 31
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_3
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 36
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :cond_4
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setByteArray(ILjava/lang/String;[B)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-class v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v1

    if-gez p0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 66
    :cond_0
    if-nez p1, :cond_1

    .line 67
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p0, :cond_2

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 74
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 75
    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :cond_3
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized setObject(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    const-class v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;

    monitor-enter v1

    if-gez p0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 108
    :cond_0
    if-nez p1, :cond_1

    .line 109
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 112
    :cond_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p0, :cond_2

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 116
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/ObjectStorage;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 117
    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_3
    monitor-exit v1

    return-void
.end method
