.class final Lorg/antivirus/wipe/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/j;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/wipe/j;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->c(Lorg/antivirus/wipe/WipeByApp;)V

    return-void
.end method
