.class public final LWUPSYNC/ActionHolder;
.super Ljava/lang/Object;


# instance fields
.field public value:LWUPSYNC/Action;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWUPSYNC/ActionHolder;->value:LWUPSYNC/Action;

    return-void
.end method
