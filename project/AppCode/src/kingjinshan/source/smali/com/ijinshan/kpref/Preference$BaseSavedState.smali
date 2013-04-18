.class public Lcom/ijinshan/kpref/Preference$BaseSavedState;
.super Landroid/view/AbsSavedState;
.source "Preference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/ijinshan/kpref/k;

    invoke-direct {v0}, Lcom/ijinshan/kpref/k;-><init>()V

    sput-object v0, Lcom/ijinshan/kpref/Preference$BaseSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter

    .prologue
    .line 1649
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1650
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    invoke-direct {p0, p1}, Landroid/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1654
    return-void
.end method
