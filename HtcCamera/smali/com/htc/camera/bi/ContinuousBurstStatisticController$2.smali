.class Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;
.super Ljava/lang/Object;
.source "ContinuousBurstStatisticController.java"

# interfaces
.implements Lcom/htc/camera/property/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/property/c",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;


# direct methods
.method constructor <init>(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/htc/camera/property/Property;Lcom/htc/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/htc/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p2, Lcom/htc/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    # getter for: Lcom/htc/camera/bi/ContinuousBurstStatisticController;->mHasChanged:Z
    invoke-static {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->access$100(Lcom/htc/camera/bi/ContinuousBurstStatisticController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->saveToPreference()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/htc/camera/bi/ContinuousBurstStatisticController$2;->this$0:Lcom/htc/camera/bi/ContinuousBurstStatisticController;

    invoke-virtual {v0}, Lcom/htc/camera/bi/ContinuousBurstStatisticController;->loadFromPreference()V

    goto :goto_0
.end method