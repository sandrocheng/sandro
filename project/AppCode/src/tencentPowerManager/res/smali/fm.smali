.class final Lfm;
.super Ljava/lang/Object;

# interfaces
.implements Lfk;


# instance fields
.field private a:Lfk;


# direct methods
.method constructor <init>(Lfk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfm;->a:Lfk;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lfm;->a:Lfk;

    invoke-interface {v0}, Lfk;->a()J

    move-result-wide v0

    return-wide v0
.end method
