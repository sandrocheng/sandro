.class public Lcom/avg/toolkit/e/a/g;
.super Ljava/lang/Object;


# static fields
.field static final d:[Lcom/avg/toolkit/e/a/g;

.field static final e:I


# instance fields
.field public final a:Lcom/avg/toolkit/e/a/s;

.field public final b:Lcom/avg/toolkit/e/a/q;

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avg/toolkit/e/a/g;

    new-instance v1, Lcom/avg/toolkit/e/a/g;

    sget-object v2, Lcom/avg/toolkit/e/a/s;->c:Lcom/avg/toolkit/e/a/s;

    sget-object v3, Lcom/avg/toolkit/e/a/q;->a:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v1, v2, v3, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/avg/toolkit/e/a/g;

    sget-object v2, Lcom/avg/toolkit/e/a/s;->d:Lcom/avg/toolkit/e/a/s;

    sget-object v3, Lcom/avg/toolkit/e/a/q;->a:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v1, v2, v3, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Lcom/avg/toolkit/e/a/g;

    sget-object v3, Lcom/avg/toolkit/e/a/s;->e:Lcom/avg/toolkit/e/a/s;

    sget-object v4, Lcom/avg/toolkit/e/a/q;->c:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/avg/toolkit/e/a/g;

    sget-object v3, Lcom/avg/toolkit/e/a/s;->e:Lcom/avg/toolkit/e/a/s;

    sget-object v4, Lcom/avg/toolkit/e/a/q;->b:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/avg/toolkit/e/a/g;

    sget-object v3, Lcom/avg/toolkit/e/a/s;->e:Lcom/avg/toolkit/e/a/s;

    sget-object v4, Lcom/avg/toolkit/e/a/q;->d:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/avg/toolkit/e/a/g;

    sget-object v3, Lcom/avg/toolkit/e/a/s;->b:Lcom/avg/toolkit/e/a/s;

    sget-object v4, Lcom/avg/toolkit/e/a/q;->a:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v2, v3, v4, v5}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/avg/toolkit/e/a/g;

    sget-object v3, Lcom/avg/toolkit/e/a/s;->e:Lcom/avg/toolkit/e/a/s;

    sget-object v4, Lcom/avg/toolkit/e/a/q;->b:Lcom/avg/toolkit/e/a/q;

    invoke-direct {v2, v3, v4, v6}, Lcom/avg/toolkit/e/a/g;-><init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/toolkit/e/a/g;->d:[Lcom/avg/toolkit/e/a/g;

    sget-object v0, Lcom/avg/toolkit/e/a/g;->d:[Lcom/avg/toolkit/e/a/g;

    array-length v0, v0

    sput v0, Lcom/avg/toolkit/e/a/g;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/avg/toolkit/e/a/s;Lcom/avg/toolkit/e/a/q;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/avg/toolkit/e/a/g;->a:Lcom/avg/toolkit/e/a/s;

    iput-object p2, p0, Lcom/avg/toolkit/e/a/g;->b:Lcom/avg/toolkit/e/a/q;

    iput-boolean p3, p0, Lcom/avg/toolkit/e/a/g;->c:Z

    return-void
.end method
