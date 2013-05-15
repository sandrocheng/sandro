.class abstract Lcom/avast/android/mobilesecurity/e/e;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Lcom/avast/android/mobilesecurity/e/g;

.field b:Ljava/lang/Object;

.field final synthetic c:Lcom/avast/android/mobilesecurity/e/c;

.field private d:Lcom/avast/android/mobilesecurity/e/g;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/e/c;)V
    .locals 2
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/e/e;->c:Lcom/avast/android/mobilesecurity/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iget-object v1, p1, Lcom/avast/android/mobilesecurity/e/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1041
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/e/e;->a()Lcom/avast/android/mobilesecurity/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    .line 1044
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1048
    return-void

    .line 1044
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/e/g;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1046
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b(Lcom/avast/android/mobilesecurity/e/g;)Lcom/avast/android/mobilesecurity/e/g;
    .locals 2
    .parameter

    .prologue
    .line 1058
    :goto_0
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/e/e;->a(Lcom/avast/android/mobilesecurity/e/g;)Lcom/avast/android/mobilesecurity/e/g;

    move-result-object v0

    .line 1059
    if-nez v0, :cond_1

    .line 1060
    const/4 v0, 0x0

    .line 1064
    :cond_0
    :goto_1
    return-object v0

    .line 1061
    :cond_1
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/e/g;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 1063
    if-ne v0, p1, :cond_2

    .line 1064
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/e/e;->a()Lcom/avast/android/mobilesecurity/e/g;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object p1, v0

    .line 1067
    goto :goto_0
.end method


# virtual methods
.method abstract a()Lcom/avast/android/mobilesecurity/e/g;
.end method

.method abstract a(Lcom/avast/android/mobilesecurity/e/g;)Lcom/avast/android/mobilesecurity/e/g;
.end method

.method b()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->c:Lcom/avast/android/mobilesecurity/e/c;

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/e/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1075
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/e/e;->b(Lcom/avast/android/mobilesecurity/e/g;)Lcom/avast/android/mobilesecurity/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    .line 1079
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1083
    return-void

    .line 1079
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/e/g;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    if-nez v0, :cond_0

    .line 1091
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->a:Lcom/avast/android/mobilesecurity/e/g;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->d:Lcom/avast/android/mobilesecurity/e/g;

    .line 1093
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->b:Ljava/lang/Object;

    .line 1094
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/e/e;->b()V

    .line 1095
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/e/e;->d:Lcom/avast/android/mobilesecurity/e/g;

    .line 1100
    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1102
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/e/e;->d:Lcom/avast/android/mobilesecurity/e/g;

    .line 1103
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/e/e;->c:Lcom/avast/android/mobilesecurity/e/c;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/e/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1104
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1106
    :try_start_0
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/e/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1107
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/e/e;->c:Lcom/avast/android/mobilesecurity/e/c;

    invoke-virtual {v2, v0}, Lcom/avast/android/mobilesecurity/e/c;->a(Lcom/avast/android/mobilesecurity/e/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1111
    return-void

    .line 1109
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
