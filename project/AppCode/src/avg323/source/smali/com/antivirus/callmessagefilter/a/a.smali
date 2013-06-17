.class public final Lcom/antivirus/callmessagefilter/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Landroid/database/Cursor;

.field private c:Landroid/database/Cursor;

.field private d:Z

.field private e:Landroid/database/CursorJoiner$Result;

.field private f:[I

.field private g:[I

.field private h:[Ljava/lang/Long;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/antivirus/callmessagefilter/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/antivirus/callmessagefilter/a/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/callmessagefilter/a/a;->d:Z

    invoke-direct {p0, p1, p2}, Lcom/antivirus/callmessagefilter/a/a;->a(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->f:[I

    invoke-direct {p0, p3, p4}, Lcom/antivirus/callmessagefilter/a/a;->a(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->g:[I

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->f:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->h:[Ljava/lang/Long;

    if-eqz p5, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/antivirus/callmessagefilter/a/a;->i:I

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private varargs a([Ljava/lang/Long;)I
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an even number of values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_6

    aget-object v2, p1, v0

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    if-nez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    if-eqz v2, :cond_1

    if-gez v2, :cond_5

    iget v0, p0, Lcom/antivirus/callmessagefilter/a/a;->i:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/antivirus/callmessagefilter/a/a;->i:I

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private static a([Ljava/lang/Long;Landroid/database/Cursor;[II)V
    .locals 4

    sget-boolean v0, Lcom/antivirus/callmessagefilter/a/a;->a:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3

    array-length v0, p2

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/antivirus/callmessagefilter/a/a;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/antivirus/callmessagefilter/a/b;->a:[I

    iget-object v1, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/callmessagefilter/a/a;->d:Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/CursorJoiner$Result;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/antivirus/callmessagefilter/a/a;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/antivirus/callmessagefilter/a/a;->b()V

    sget-boolean v2, Lcom/antivirus/callmessagefilter/a/a;->a:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/antivirus/callmessagefilter/a/a;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->h:[Ljava/lang/Long;

    iget-object v1, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->f:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/callmessagefilter/a/a;->a([Ljava/lang/Long;Landroid/database/Cursor;[II)V

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->h:[Ljava/lang/Long;

    iget-object v1, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->g:[I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/callmessagefilter/a/a;->a([Ljava/lang/Long;Landroid/database/Cursor;[II)V

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->h:[Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/antivirus/callmessagefilter/a/a;->a([Ljava/lang/Long;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/callmessagefilter/a/a;->d:Z

    iget-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :pswitch_0
    :try_start_2
    sget-object v0, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    :pswitch_1
    sget-object v0, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    :pswitch_2
    sget-object v0, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    sget-object v0, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    goto :goto_2

    :cond_5
    sget-boolean v1, Lcom/antivirus/callmessagefilter/a/a;->a:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    sget-object v0, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v0, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/antivirus/callmessagefilter/a/a;->d:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/antivirus/callmessagefilter/a/b;->a:[I

    iget-object v3, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v3}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->e:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->b:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/antivirus/callmessagefilter/a/a;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/antivirus/callmessagefilter/a/a;->a()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
