.class Lcom/google/a/a/a/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/a/aa;->a:Ljava/util/Map;

    iput-wide p2, p0, Lcom/google/a/a/a/aa;->b:J

    iput-object p4, p0, Lcom/google/a/a/a/aa;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/a/a/a/aa;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/aa;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/aa;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/aa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/aa;->d:Ljava/util/List;

    return-object v0
.end method
