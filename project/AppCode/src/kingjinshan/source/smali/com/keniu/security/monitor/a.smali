.class public final Lcom/keniu/security/monitor/a;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x3fffffff

.field public static final c:I = 0x4fffffff

.field public static final d:I = 0x5fffffff

.field public static final e:I = 0x7fffffff

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x3fffffff

.field public static final j:I = 0x4fffffff

.field public static final k:I = 0x7fffffff

.field public static final l:I = -0x1

.field public static m:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final n:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final o:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final p:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final q:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final r:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final s:I = 0x0

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I

.field public static final x:I

.field private static z:Lcom/keniu/security/monitor/a;


# instance fields
.field private y:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 69
    sput v0, Lcom/keniu/security/monitor/a;->m:I

    const/4 v1, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->n:I

    .line 70
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->o:I

    .line 71
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->p:I

    .line 79
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->q:I

    .line 87
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->r:I

    .line 91
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->s:I

    .line 101
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->w:I

    .line 103
    sget v0, Lcom/keniu/security/monitor/a;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/monitor/a;->m:I

    sput v0, Lcom/keniu/security/monitor/a;->x:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/keniu/security/monitor/a;->m:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    .line 245
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/keniu/security/monitor/a;->m:I

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/keniu/security/monitor/a;
    .locals 2

    .prologue
    .line 107
    const-class v0, Lcom/keniu/security/monitor/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/keniu/security/monitor/a;->z:Lcom/keniu/security/monitor/a;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcom/keniu/security/monitor/a;

    invoke-direct {v1}, Lcom/keniu/security/monitor/a;-><init>()V

    sput-object v1, Lcom/keniu/security/monitor/a;->z:Lcom/keniu/security/monitor/a;

    .line 110
    :cond_0
    sget-object v1, Lcom/keniu/security/monitor/a;->z:Lcom/keniu/security/monitor/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Ljava/util/ArrayList;Lcom/keniu/security/monitor/b;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    .line 234
    :goto_0
    if-ge v2, v1, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/monitor/c;

    iget-object v0, v0, Lcom/keniu/security/monitor/c;->b:Lcom/keniu/security/monitor/b;

    if-ne v0, p1, :cond_0

    .line 236
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    const/4 v0, 0x1

    .line 240
    :goto_1
    return v0

    .line 234
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 240
    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Lcom/keniu/security/monitor/b;I)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 211
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    sub-int v1, v0, v4

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 213
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/monitor/c;

    .line 214
    iget-object v3, v0, Lcom/keniu/security/monitor/c;->b:Lcom/keniu/security/monitor/b;

    if-ne v3, p1, :cond_0

    .line 215
    const/4 v0, 0x0

    .line 228
    :goto_1
    return v0

    .line 222
    :cond_0
    iget v0, v0, Lcom/keniu/security/monitor/c;->a:I

    if-lt p2, v0, :cond_2

    .line 223
    add-int/lit8 v0, v2, -0x1

    .line 212
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    goto :goto_0

    .line 227
    :cond_1
    new-instance v0, Lcom/keniu/security/monitor/c;

    invoke-direct {v0, p1, p2}, Lcom/keniu/security/monitor/c;-><init>(Lcom/keniu/security/monitor/b;I)V

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v4

    .line 228
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    if-ltz p1, :cond_0

    sget v1, Lcom/keniu/security/monitor/a;->m:I

    if-ge p1, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    if-ltz p1, :cond_1

    sget v1, Lcom/keniu/security/monitor/a;->m:I

    if-ge p1, v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 186
    :goto_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-ltz v1, :cond_0

    .line 187
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/monitor/c;

    .line 188
    iget-object v0, v0, Lcom/keniu/security/monitor/c;->b:Lcom/keniu/security/monitor/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/keniu/security/monitor/b;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 186
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 192
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    if-ltz p1, :cond_0

    sget v1, Lcom/keniu/security/monitor/a;->m:I

    if-ge p1, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 150
    monitor-enter p0

    .line 151
    const/4 v0, 0x1

    .line 152
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    return v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILcom/keniu/security/monitor/b;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 162
    .line 163
    if-ltz p1, :cond_2

    sget v0, Lcom/keniu/security/monitor/a;->m:I

    if-ge p1, v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/monitor/c;

    iget-object v0, v0, Lcom/keniu/security/monitor/c;->b:Lcom/keniu/security/monitor/b;

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 168
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_2
    return v0

    .line 167
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method public final a(ILcom/keniu/security/monitor/b;I)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 115
    .line 116
    if-ltz p1, :cond_3

    sget v0, Lcom/keniu/security/monitor/a;->m:I

    if-ge p1, v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/keniu/security/monitor/a;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v1, v0, v5

    move v2, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/monitor/c;

    iget-object v3, v0, Lcom/keniu/security/monitor/c;->b:Lcom/keniu/security/monitor/b;

    if-ne v3, p2, :cond_0

    move v0, v4

    .line 121
    :goto_1
    monitor-exit p0

    .line 123
    :goto_2
    return v0

    .line 120
    :cond_0
    iget v0, v0, Lcom/keniu/security/monitor/c;->a:I

    if-lt p3, v0, :cond_2

    add-int/lit8 v0, v2, -0x1

    :goto_3
    add-int/lit8 v1, v1, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/keniu/security/monitor/c;

    invoke-direct {v0, p2, p3}, Lcom/keniu/security/monitor/c;-><init>(Lcom/keniu/security/monitor/b;I)V

    invoke-virtual {p0, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v4

    goto :goto_2
.end method
