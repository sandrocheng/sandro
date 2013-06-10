.class final Landroid/support/v4/app/t;
.super Landroid/support/v4/app/r;


# static fields
.field static a:Z


# instance fields
.field final b:Landroid/support/v4/app/q;

.field final c:Landroid/support/v4/app/q;

.field d:Landroid/support/v4/app/f;

.field e:Z

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/t;->a:Z

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/f;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0}, Landroid/support/v4/app/q;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0}, Landroid/support/v4/app/q;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    iput-object p1, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/app/f;

    iput-boolean p2, p0, Landroid/support/v4/app/t;->e:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v4/app/f;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/app/f;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v4, v1}, Landroid/support/v4/app/q;->d(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v3, p2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/q;->d(I)I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/u;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/app/u;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v4

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    iget-boolean v5, v0, Landroid/support/v4/app/u;->h:Z

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/support/v4/app/u;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    return v3
.end method

.method final b()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStart when already started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v5, p0, Landroid/support/v4/app/t;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    iget-boolean v2, v0, Landroid/support/v4/app/u;->i:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Landroid/support/v4/app/u;->j:Z

    if-eqz v2, :cond_4

    iput-boolean v5, v0, Landroid/support/v4/app/u;->h:Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    if-nez v2, :cond_3

    iput-boolean v5, v0, Landroid/support/v4/app/u;->h:Z

    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_5

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Starting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    if-nez v2, :cond_6

    iget-object v2, v0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/s;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/s;

    iget v3, v0, Landroid/support/v4/app/u;->a:I

    iget-object v3, v0, Landroid/support/v4/app/u;->b:Landroid/os/Bundle;

    invoke-interface {v2}, Landroid/support/v4/app/s;->a()Landroid/support/v4/a/a;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    :cond_6
    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-boolean v2, v0, Landroid/support/v4/app/u;->m:Z

    if-nez v2, :cond_9

    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    iget v3, v0, Landroid/support/v4/app/u;->a:I

    iget-object v4, v2, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    if-eqz v4, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iput-object v0, v2, Landroid/support/v4/a/a;->b:Landroid/support/v4/a/b;

    iput v3, v2, Landroid/support/v4/a/a;->a:I

    iput-boolean v5, v0, Landroid/support/v4/app/u;->m:Z

    :cond_9
    iget-object v0, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    iput-boolean v5, v0, Landroid/support/v4/a/a;->c:Z

    iput-boolean v6, v0, Landroid/support/v4/a/a;->e:Z

    iput-boolean v6, v0, Landroid/support/v4/a/a;->d:Z

    goto/16 :goto_1
.end method

.method final c()V
    .locals 4

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doStop when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    goto :goto_0
.end method

.method final d()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called doRetain when not started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v6, p0, Landroid/support/v4/app/t;->f:Z

    iput-boolean v5, p0, Landroid/support/v4/app/t;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v6, v0, Landroid/support/v4/app/u;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    iput-boolean v2, v0, Landroid/support/v4/app/u;->j:Z

    iput-boolean v5, v0, Landroid/support/v4/app/u;->h:Z

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/u;->c:Landroid/support/v4/app/s;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final e()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished Retaining in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v5, p0, Landroid/support/v4/app/t;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    iget-boolean v2, v0, Landroid/support/v4/app/u;->i:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Landroid/support/v4/app/t;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Finished Retaining: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v5, v0, Landroid/support/v4/app/u;->i:Z

    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    iget-boolean v3, v0, Landroid/support/v4/app/u;->j:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/u;->a()V

    :cond_2
    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/u;->e:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/support/v4/app/u;->k:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    iget-object v3, v0, Landroid/support/v4/app/u;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/a/a;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method final f()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/u;->k:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final g()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    iget-boolean v2, v0, Landroid/support/v4/app/u;->h:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/support/v4/app/u;->k:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/u;->k:Z

    iget-boolean v2, v0, Landroid/support/v4/app/u;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v4/app/u;->d:Landroid/support/v4/a/a;

    iget-object v3, v0, Landroid/support/v4/app/u;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/u;->a(Landroid/support/v4/a/a;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final h()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Active in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Landroid/support/v4/app/t;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destroying Inactive in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/q;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/u;

    invoke-virtual {v0}, Landroid/support/v4/app/u;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/q;

    invoke-virtual {v0}, Landroid/support/v4/app/q;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/app/f;

    invoke-static {v1, v0}, Landroid/support/v4/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
